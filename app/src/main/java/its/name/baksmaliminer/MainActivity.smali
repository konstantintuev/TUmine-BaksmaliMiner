.class public Lits/name/baksmaliminer/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# instance fields
.field miner:Lits/name/baksmaliminer/Miner;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 13
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 14
    new-instance v0, Lits/name/baksmaliminer/Miner;

    invoke-virtual {p0}, Lits/name/baksmaliminer/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lits/name/baksmaliminer/Miner;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lits/name/baksmaliminer/MainActivity;->miner:Lits/name/baksmaliminer/Miner;

    .line 15
    iget-object v0, p0, Lits/name/baksmaliminer/MainActivity;->miner:Lits/name/baksmaliminer/Miner;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lits/name/baksmaliminer/Miner;->action(Ljava/lang/Boolean;)V

    .line 16
    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 20
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 21
    iget-object v0, p0, Lits/name/baksmaliminer/MainActivity;->miner:Lits/name/baksmaliminer/Miner;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lits/name/baksmaliminer/Miner;->action(Ljava/lang/Boolean;)V

    .line 22
    return-void
.end method
