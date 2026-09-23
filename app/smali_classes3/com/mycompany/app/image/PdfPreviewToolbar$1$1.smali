.class Lcom/mycompany/app/image/PdfPreviewToolbar$1$1;
.super Ljava/lang/Object;
.implements Landroid/view/View$OnClickListener;
.source "PdfPreviewToolbar.java"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcom/mycompany/app/image/PdfPreviewToolbar$1;->run()V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic this$0:Lcom/mycompany/app/image/PdfPreviewToolbar$1;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$path:Ljava/lang/String;

.field final synthetic val$title:Ljava/lang/String;

.method constructor <init>(Lcom/mycompany/app/image/PdfPreviewToolbar$1;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
  .annotation system Ldalvik/annotation/MethodParameters;
    accessFlags = {
      32784,
      4112,
      4112,
      4112
    }
    names = {
      null,
      null,
      null,
      null
    }
  .end annotation
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()V"
    }
  .end annotation
  .registers 5
  .line 65
    iput-object p2, p0, Lcom/mycompany/app/image/PdfPreviewToolbar$1$1;->val$activity:Landroid/app/Activity;
    iput-object p3, p0, Lcom/mycompany/app/image/PdfPreviewToolbar$1$1;->val$path:Ljava/lang/String;
    iput-object p4, p0, Lcom/mycompany/app/image/PdfPreviewToolbar$1$1;->val$title:Ljava/lang/String;
    iput-object p1, p0, Lcom/mycompany/app/image/PdfPreviewToolbar$1$1;->this$0:Lcom/mycompany/app/image/PdfPreviewToolbar$1;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onClick(Landroid/view/View;)V
  .registers 4
  .line 68
    iget-object p1, p0, Lcom/mycompany/app/image/PdfPreviewToolbar$1$1;->val$activity:Landroid/app/Activity;
    iget-object v0, p0, Lcom/mycompany/app/image/PdfPreviewToolbar$1$1;->val$path:Ljava/lang/String;
    iget-object v1, p0, Lcom/mycompany/app/image/PdfPreviewToolbar$1$1;->val$title:Ljava/lang/String;
    invoke-static { p1, v0, v1 }, Lcom/mycompany/app/image/PdfPreviewToolbar;->-$$Nest$smshare(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    return-void
.end method
