.class Lcom/mycompany/app/quick/TabSubView$19;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/quick/TabSubView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/quick/TabSubView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/quick/TabSubView$19;->c:Lcom/mycompany/app/quick/TabSubView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/TabSubView$19;->c:Lcom/mycompany/app/quick/TabSubView;

    .line 2
    .line 3
    iget v1, v0, Lcom/mycompany/app/quick/TabSubView;->u0:I

    .line 4
    .line 5
    iget-object v2, v0, Lcom/mycompany/app/quick/TabSubView;->D:Lcom/mycompany/app/web/WebTabAdapter;

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {v2, v1}, Lcom/mycompany/app/web/WebTabAdapter;->c0(I)V

    .line 11
    .line 12
    .line 13
    new-instance v1, Lcom/mycompany/app/quick/TabSubView$20;

    .line 14
    .line 15
    invoke-direct {v1, v0}, Lcom/mycompany/app/quick/TabSubView$20;-><init>(Lcom/mycompany/app/quick/TabSubView;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 19
    .line 20
    .line 21
    return-void
.end method
