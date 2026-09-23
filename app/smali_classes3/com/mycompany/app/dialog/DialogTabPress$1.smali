.class Lcom/mycompany/app/dialog/DialogTabPress$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogTabPress;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogTabPress;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogTabPress$1;->c:Lcom/mycompany/app/dialog/DialogTabPress;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabPress$1;->c:Lcom/mycompany/app/dialog/DialogTabPress;

    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabPress;->b0:Landroid/content/Context;

    if-nez v1, :cond_0

    return-void

    :cond_0
    new-instance v2, Lcom/mycompany/app/view/MyDialogLink;

    invoke-direct {v2, v1}, Lcom/mycompany/app/view/MyDialogLink;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    sget v4, Lcom/mycompany/app/main/MainApp;->G1:I

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v5, v5, v4}, Landroid/view/View;->setPadding(IIII)V

    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogTabPress;->a0:Lcom/mycompany/app/web/WebViewActivity;

    iget v5, v0, Lcom/mycompany/app/dialog/DialogTabPress;->d0:I

    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogTabPress;->f0:Landroid/view/View;

    invoke-static {v4, v5, v3}, Lcom/mycompany/app/web/WebViewActivity;->D1header(Lcom/mycompany/app/web/WebViewActivity;ILandroid/view/View;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    const/high16 v4, 0x42900000    # 72.0f

    invoke-static {v1, v4}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    move-result v4

    float-to-int v4, v4

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v5, v1, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabPress;->b0:Landroid/content/Context;

    new-instance v3, Lcom/mycompany/app/view/MyLinkView;

    invoke-direct {v3, v1}, Lcom/mycompany/app/view/MyLinkView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v3, v1}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    if-eqz v1, :cond_2

    const v1, -0xdededf

    invoke-virtual {v3, v1}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {v2, v1}, Lcom/mycompany/app/view/MyDialogLink;->setBackColor(I)V

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    invoke-virtual {v3, v1}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {v2, v1}, Lcom/mycompany/app/view/MyDialogLink;->setBackColor(I)V

    :goto_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabPress;->k0:[Z

    invoke-static {v1}, Lcom/mycompany/app/dialog/DialogTabPress;->buildItems([Z)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/mycompany/app/view/MyLinkView;->setItems(Ljava/util/List;)V

    new-instance v1, Lcom/mycompany/app/dialog/DialogTabPress$2;

    invoke-direct {v1, v0}, Lcom/mycompany/app/dialog/DialogTabPress$2;-><init>(Lcom/mycompany/app/dialog/DialogTabPress;)V

    invoke-virtual {v3, v1}, Lcom/mycompany/app/view/MyLinkView;->setListener(Lcom/mycompany/app/view/MyLinkView$MainLinkListener;)V

    invoke-virtual {v3, v1}, Lcom/mycompany/app/view/MyLinkView;->setLongListener(Lcom/mycompany/app/view/MyLinkView$MainLinkListener;)V

    const/4 v1, -0x1

    const/4 v4, -0x2

    invoke-virtual {v2, v3, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogTabPress;->h0:Lcom/mycompany/app/view/MyDialogLink;

    iput-object v3, v0, Lcom/mycompany/app/dialog/DialogTabPress;->i0:Lcom/mycompany/app/view/MyLinkView;

    iget-object v1, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    if-nez v1, :cond_3

    return-void

    :cond_3
    new-instance v2, Lcom/mycompany/app/dialog/DialogTabPress$3;

    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogTabPress$3;-><init>(Lcom/mycompany/app/dialog/DialogTabPress;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
