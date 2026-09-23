.class Lcom/mycompany/app/quick/QuickView$10;
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
    iput-object p1, p0, Lcom/mycompany/app/quick/QuickView$10;->c:Lcom/mycompany/app/quick/QuickView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickView$10;->c:Lcom/mycompany/app/quick/QuickView;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickView;->k:Lcom/mycompany/app/view/MyRecyclerView;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-static {v0}, Lcom/mycompany/app/quick/QuickView;->d(Lcom/mycompany/app/quick/QuickView;)V

    .line 9
    .line 10
    .line 11
    iget v1, v0, Lcom/mycompany/app/quick/QuickView;->z:I

    .line 12
    .line 13
    const/4 v2, -0x1

    .line 14
    iput v2, v0, Lcom/mycompany/app/quick/QuickView;->z:I

    .line 15
    .line 16
    if-ne v1, v2, :cond_1

    .line 17
    .line 18
    :goto_0
    return-void

    .line 19
    :cond_1
    iget-object v0, v0, Lcom/mycompany/app/quick/QuickView;->k:Lcom/mycompany/app/view/MyRecyclerView;

    .line 20
    .line 21
    new-instance v2, Lcom/mycompany/app/quick/QuickView$10$1;

    .line 22
    .line 23
    invoke-direct {v2, p0, v1}, Lcom/mycompany/app/quick/QuickView$10$1;-><init>(Lcom/mycompany/app/quick/QuickView$10;I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 27
    .line 28
    .line 29
    return-void
.end method
