.class Lcom/mycompany/app/dialog/DialogVideoMenu$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogVideoMenu;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogVideoMenu;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogVideoMenu$13;->c:Lcom/mycompany/app/dialog/DialogVideoMenu;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogVideoMenu$13;->c:Lcom/mycompany/app/dialog/DialogVideoMenu;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogVideoMenu;->h:Landroid/widget/FrameLayout;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogVideoMenu;->c:Lcom/mycompany/app/view/MyWebBody;

    .line 9
    .line 10
    const/4 v3, -0x1

    .line 11
    invoke-virtual {v2, v1, v3, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 12
    .line 13
    .line 14
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogVideoMenu;->c:Lcom/mycompany/app/view/MyWebBody;

    .line 15
    .line 16
    new-instance v1, Lcom/mycompany/app/dialog/DialogVideoMenu$13$1;

    .line 17
    .line 18
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogVideoMenu$13$1;-><init>(Lcom/mycompany/app/dialog/DialogVideoMenu$13;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 22
    .line 23
    .line 24
    return-void
.end method
