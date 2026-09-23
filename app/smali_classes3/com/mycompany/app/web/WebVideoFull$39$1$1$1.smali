.class Lcom/mycompany/app/web/WebVideoFull$39$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebVideoFull$39$1$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebVideoFull$39$1$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebVideoFull$39$1$1$1;->c:Lcom/mycompany/app/web/WebVideoFull$39$1$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull$39$1$1$1;->c:Lcom/mycompany/app/web/WebVideoFull$39$1$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebVideoFull$39$1$1;->c:Lcom/mycompany/app/web/WebVideoFull$39$1;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/mycompany/app/web/WebVideoFull$39$1;->c:Lcom/mycompany/app/web/WebVideoFull$39;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/mycompany/app/web/WebVideoFull$39;->c:Lcom/mycompany/app/web/WebVideoFull;

    .line 8
    .line 9
    iget-object v1, v0, Lcom/mycompany/app/web/WebVideoFull;->c:Lcom/mycompany/app/main/MainActivity;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance v1, Lcom/mycompany/app/web/WebVideoFull$40;

    .line 15
    .line 16
    invoke-direct {v1, v0}, Lcom/mycompany/app/web/WebVideoFull$40;-><init>(Lcom/mycompany/app/web/WebVideoFull;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/mycompany/app/web/WebVideoFull;->c0(Ljava/lang/Runnable;)V

    .line 20
    .line 21
    .line 22
    iget-object v1, v0, Lcom/mycompany/app/web/WebVideoFull;->j:Landroid/view/ViewGroup;

    .line 23
    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    :goto_0
    return-void

    .line 27
    :cond_1
    new-instance v2, Lcom/mycompany/app/web/WebVideoFull$41;

    .line 28
    .line 29
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebVideoFull$41;-><init>(Lcom/mycompany/app/web/WebVideoFull;)V

    .line 30
    .line 31
    .line 32
    const-wide/16 v3, 0x3e8

    .line 33
    .line 34
    invoke-virtual {v1, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 35
    .line 36
    .line 37
    return-void
.end method
