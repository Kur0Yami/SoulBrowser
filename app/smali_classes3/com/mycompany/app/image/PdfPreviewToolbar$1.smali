.class Lcom/mycompany/app/image/PdfPreviewToolbar$1;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "PdfPreviewToolbar.java"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcom/mycompany/app/image/PdfPreviewToolbar;->attachForPdf(Lcom/mycompany/app/image/ImageViewControl;Landroid/app/Activity;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$control:Lcom/mycompany/app/image/ImageViewControl;

.field final synthetic val$path:Ljava/lang/String;

.field final synthetic val$title:Ljava/lang/String;

.method constructor <init>(Landroid/app/Activity;Lcom/mycompany/app/image/ImageViewControl;Ljava/lang/String;Ljava/lang/String;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()V"
    }
  .end annotation
  .registers 5
  .line 47
    iput-object p1, p0, Lcom/mycompany/app/image/PdfPreviewToolbar$1;->val$activity:Landroid/app/Activity;
    iput-object p2, p0, Lcom/mycompany/app/image/PdfPreviewToolbar$1;->val$control:Lcom/mycompany/app/image/ImageViewControl;
    iput-object p3, p0, Lcom/mycompany/app/image/PdfPreviewToolbar$1;->val$title:Ljava/lang/String;
    iput-object p4, p0, Lcom/mycompany/app/image/PdfPreviewToolbar$1;->val$path:Ljava/lang/String;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .registers 7
  .line 50
    iget-object v0, p0, Lcom/mycompany/app/image/PdfPreviewToolbar$1;->val$activity:Landroid/app/Activity;
    invoke-virtual { v0 }, Landroid/app/Activity;->isFinishing()Z
    move-result v0
    if-eqz v0, :L0
    return-void
  :L0
  .line 53
    iget-object v0, p0, Lcom/mycompany/app/image/PdfPreviewToolbar$1;->val$control:Lcom/mycompany/app/image/ImageViewControl;
    iget-object v1, p0, Lcom/mycompany/app/image/PdfPreviewToolbar$1;->val$title:Ljava/lang/String;
    iget-object v2, p0, Lcom/mycompany/app/image/PdfPreviewToolbar$1;->val$path:Ljava/lang/String;
    invoke-static { v0, v1, v2 }, Lcom/mycompany/app/image/PdfPreviewToolbar;->applyHeaderTitle(Lcom/mycompany/app/image/ImageViewControl;Ljava/lang/String;Ljava/lang/String;)V
  .line 54
    iget-object v0, p0, Lcom/mycompany/app/image/PdfPreviewToolbar$1;->val$control:Lcom/mycompany/app/image/ImageViewControl;
    iget-object v0, v0, Lcom/mycompany/app/image/ImageViewControl;->M:Landroid/widget/LinearLayout;
    if-nez v0, :L1
    return-void
  :L1
  .line 58
    const-string v1, "pdf_preview_actions_share"
    invoke-virtual { v0, v1 }, Landroid/widget/LinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;
    move-result-object v1
  .line 59
    const-string v2, "pdf_preview_actions_download"
    invoke-virtual { v0, v2 }, Landroid/widget/LinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;
    move-result-object v0
  .line 60
    instance-of v2, v1, Lcom/mycompany/app/view/MyButtonImage;
    if-eqz v2, :L3
    instance-of v2, v0, Lcom/mycompany/app/view/MyButtonImage;
    if-nez v2, :L2
    goto :L3
  :L2
  .line 63
    check-cast v1, Lcom/mycompany/app/view/MyButtonImage;
  .line 64
    check-cast v0, Lcom/mycompany/app/view/MyButtonImage;
  .line 65
    new-instance v2, Lcom/mycompany/app/image/PdfPreviewToolbar$1$1;
    iget-object v3, p0, Lcom/mycompany/app/image/PdfPreviewToolbar$1;->val$activity:Landroid/app/Activity;
    iget-object v4, p0, Lcom/mycompany/app/image/PdfPreviewToolbar$1;->val$path:Ljava/lang/String;
    iget-object v5, p0, Lcom/mycompany/app/image/PdfPreviewToolbar$1;->val$title:Ljava/lang/String;
    invoke-direct { v2, p0, v3, v4, v5 }, Lcom/mycompany/app/image/PdfPreviewToolbar$1$1;-><init>(Lcom/mycompany/app/image/PdfPreviewToolbar$1;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    invoke-virtual { v1, v2 }, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V
  .line 71
    new-instance v1, Lcom/mycompany/app/image/PdfPreviewToolbar$1$2;
    iget-object v2, p0, Lcom/mycompany/app/image/PdfPreviewToolbar$1;->val$activity:Landroid/app/Activity;
    iget-object v3, p0, Lcom/mycompany/app/image/PdfPreviewToolbar$1;->val$path:Ljava/lang/String;
    iget-object v4, p0, Lcom/mycompany/app/image/PdfPreviewToolbar$1;->val$title:Ljava/lang/String;
    invoke-direct { v1, p0, v2, v3, v4 }, Lcom/mycompany/app/image/PdfPreviewToolbar$1$2;-><init>(Lcom/mycompany/app/image/PdfPreviewToolbar$1;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    invoke-virtual { v0, v1 }, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V
  :L3
    return-void
.end method
