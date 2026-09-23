.class Lcom/mycompany/app/quick/QuickView$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/quick/QuickView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/quick/QuickView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/quick/QuickView$15;->c:Lcom/mycompany/app/quick/QuickView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickView$15;->c:Lcom/mycompany/app/quick/QuickView;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickView;->c:Landroid/content/Context;

    .line 4
    .line 5
    sget-boolean v2, Lcom/mycompany/app/pref/PrefZtwo;->J:Z

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    xor-int/2addr v2, v3

    .line 9
    iget-boolean v4, v0, Lcom/mycompany/app/quick/QuickView;->E:Z

    .line 10
    .line 11
    invoke-static {v1, v3, v2, v4}, Lcom/mycompany/app/db/book/DbBookQuick;->k(Landroid/content/Context;ZZZ)Ljava/util/ArrayList;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const/4 v2, 0x0

    .line 16
    iput-boolean v2, v0, Lcom/mycompany/app/quick/QuickView;->E:Z

    .line 17
    .line 18
    iput-boolean v2, v0, Lcom/mycompany/app/quick/QuickView;->F:Z

    .line 19
    .line 20
    iget-object v0, v0, Lcom/mycompany/app/quick/QuickView;->f:Landroid/os/Handler;

    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    new-instance v2, Lcom/mycompany/app/quick/QuickView$15$1;

    .line 26
    .line 27
    invoke-direct {v2, p0, v1}, Lcom/mycompany/app/quick/QuickView$15$1;-><init>(Lcom/mycompany/app/quick/QuickView$15;Ljava/util/ArrayList;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 31
    .line 32
    .line 33
    return-void
.end method
