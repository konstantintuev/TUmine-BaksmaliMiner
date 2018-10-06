package its.name.baksmaliminer;

import android.app.Activity;
import android.os.Bundle;
import android.os.Handler;

public class MainActivity extends Activity {

    Miner miner;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        miner = new Miner(getApplicationContext());
        miner.action(true);
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        miner.action(false);
    }
}
