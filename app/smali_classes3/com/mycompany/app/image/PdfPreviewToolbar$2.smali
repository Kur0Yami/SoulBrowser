.class Lcom/mycompany/app/image/PdfPreviewToolbar$2;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "PdfPreviewToolbar.java"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcom/mycompany/app/image/PdfPreviewToolbar;->applyHeaderTitle(Lcom/mycompany/app/image/ImageViewControl;Ljava/lang/String;Ljava/lang/String;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic val$control:Lcom/mycompany/app/image/ImageViewControl;

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$path:Ljava/lang/String;

.method constructor <init>(Lcom/mycompany/app/image/ImageViewControl;Ljava/lang/String;Ljava/lang/String;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()V"
    }
  .end annotation
  .registers 4
  .line 202
    iput-object p1, p0, Lcom/mycompany/app/image/PdfPreviewToolbar$2;->val$control:Lcom/mycompany/app/image/ImageViewControl;
    iput-object p2, p0, Lcom/mycompany/app/image/PdfPreviewToolbar$2;->val$name:Ljava/lang/String;
    iput-object p3, p0, Lcom/mycompany/app/image/PdfPreviewToolbar$2;->val$path:Ljava/lang/String;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .registers 4
  .line 205
    iget-object v0, p0, Lcom/mycompany/app/image/PdfPreviewToolbar$2;->val$control:Lcom/mycompany/app/image/ImageViewControl;
    iget-object v1, p0, Lcom/mycompany/app/image/PdfPreviewToolbar$2;->val$name:Ljava/lang/String;
    iget-object v2, p0, Lcom/mycompany/app/image/PdfPreviewToolbar$2;->val$path:Ljava/lang/String;
    invoke-static { v0, v1, v2 }, Lcom/mycompany/app/image/PdfPreviewToolbar;->formatHeaderTitle(Lcom/mycompany/app/image/ImageViewControl;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Lcom/mycompany/app/image/ImageViewControl;->setTitle(Ljava/lang/String;)V
    return-void
.end method
