.class public Lits/name/baksmaliminer/Miner;
.super Ljava/lang/Object;
.source "Miner.java"


# static fields
.field public static context:Landroid/content/Context;

.field public static process:Ljava/lang/Process;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 12
    const/4 v0, 0x0

    sput-object v0, Lits/name/baksmaliminer/Miner;->process:Ljava/lang/Process;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    sput-object p1, Lits/name/baksmaliminer/Miner;->context:Landroid/content/Context;

    .line 17
    return-void
.end method


# virtual methods
.method public action(Ljava/lang/Boolean;)V
    .registers 5
    .param p1, "start"    # Ljava/lang/Boolean;

    .prologue
    .line 20
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 21
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lits/name/baksmaliminer/Miner$1;

    invoke-direct {v2, p0}, Lits/name/baksmaliminer/Miner$1;-><init>(Lits/name/baksmaliminer/Miner;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 90
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 101
    :goto_13
    return-void

    .line 93
    :cond_14
    :try_start_14
    sget-object v1, Lits/name/baksmaliminer/Miner;->process:Ljava/lang/Process;

    if-eqz v1, :cond_1d

    .line 94
    sget-object v1, Lits/name/baksmaliminer/Miner;->process:Ljava/lang/Process;

    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    .line 96
    :cond_1d
    const/4 v1, 0x0

    sput-object v1, Lits/name/baksmaliminer/Miner;->process:Ljava/lang/Process;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_20} :catch_21

    goto :goto_13

    .line 97
    :catch_21
    move-exception v0

    .line 98
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_13
.end method
