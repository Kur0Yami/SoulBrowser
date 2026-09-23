.class Lcom/mycompany/app/dialog/DialogTabPress$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogTabPress;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogTabPress;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogTabPress$4;->a:Lcom/mycompany/app/dialog/DialogTabPress;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 4

    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogTabPress$4;->a:Lcom/mycompany/app/dialog/DialogTabPress;

    iget-object v0, p1, Lcom/mycompany/app/view/MyDialogBottom;->t:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogTabPress;->h0:Lcom/mycompany/app/view/MyDialogLink;

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogTabPress;->b0:Landroid/content/Context;

    if-nez v0, :cond_1

    goto/16 :goto_1

    :cond_1
    const/16 v1, 0x11

    const/high16 v2, 0x41800000    # 16.0f

    const/4 v3, 0x1

    invoke-static {v0, v1, v3, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->r(Landroid/content/Context;IIF)Lcom/mycompany/app/view/MyLineText;

    move-result-object v0

    sget v1, Lcom/mycompany/app/main/MainApp;->E1:I

    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyLineText;->setLinePad(I)V

    invoke-virtual {v0, v3}, Lcom/mycompany/app/view/MyLineText;->setLineUp(Z)V

    iput-object v0, p1, Lcom/mycompany/app/dialog/DialogTabPress;->j0:Lcom/mycompany/app/view/MyLineText;

    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    if-eqz v1, :cond_2

    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->selector_list_back_dark:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    iget-object v1, p1, Lcom/mycompany/app/dialog/DialogTabPress;->j0:Lcom/mycompany/app/view/MyLineText;

    const v2, -0x50506

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_2
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->selector_list_back:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    iget-object v1, p1, Lcom/mycompany/app/dialog/DialogTabPress;->j0:Lcom/mycompany/app/view/MyLineText;

    const v2, -0xe19938

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    iget-object v1, p1, Lcom/mycompany/app/dialog/DialogTabPress;->j0:Lcom/mycompany/app/view/MyLineText;

    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->l1()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyLineText;->setFilterColor(I)V

    iget-object v1, p1, Lcom/mycompany/app/dialog/DialogTabPress;->j0:Lcom/mycompany/app/view/MyLineText;

    sget v2, Lnet/kaki87/soul2/testing/R$string;->close:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p1, Lcom/mycompany/app/dialog/DialogTabPress;->j0:Lcom/mycompany/app/view/MyLineText;

    new-instance v2, Lcom/mycompany/app/dialog/DialogTabPress$5;

    invoke-direct {v2, p1}, Lcom/mycompany/app/dialog/DialogTabPress$5;-><init>(Lcom/mycompany/app/dialog/DialogTabPress;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :try_start_0
    new-instance v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    sget v2, Lcom/mycompany/app/main/MainApp;->g1:I

    const/4 v3, -0x1

    invoke-direct {v1, v3, v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x50

    iput v2, v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->c:I

    iget-object v2, p1, Lcom/mycompany/app/view/MyDialogBottom;->t:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-virtual {v2, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p1, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    new-instance v1, Lcom/mycompany/app/dialog/DialogTabPress$6;

    invoke-direct {v1, p1}, Lcom/mycompany/app/dialog/DialogTabPress$6;-><init>(Lcom/mycompany/app/dialog/DialogTabPress;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catch_0
    iget-object v0, p1, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    new-instance v1, Lcom/mycompany/app/dialog/DialogTabPress$7;

    invoke-direct {v1, p1}, Lcom/mycompany/app/dialog/DialogTabPress$7;-><init>(Lcom/mycompany/app/dialog/DialogTabPress;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_5
    :goto_1
    return-void
.end method
