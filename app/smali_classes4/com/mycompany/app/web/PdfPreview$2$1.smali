.class Lcom/mycompany/app/web/PdfPreview$2$1;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "PdfPreview.java"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcom/mycompany/app/web/PdfPreview$2;->run()V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic this$0:Lcom/mycompany/app/web/PdfPreview$2;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic val$dialog:Landroid/app/ProgressDialog;

.field final synthetic val$displayName:Ljava/lang/String;

.field final synthetic val$fallback:Lcom/mycompany/app/web/PdfPreview$Fallback;

.field final synthetic val$pdfFile:Ljava/io/File;

.method constructor <init>(Lcom/mycompany/app/web/PdfPreview$2;Landroid/app/ProgressDialog;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/app/Activity;Ljava/io/File;Ljava/lang/String;Lcom/mycompany/app/web/PdfPreview$Fallback;)V
  .annotation system Ldalvik/annotation/MethodParameters;
    accessFlags = {
      32784,
      4112,
      4112,
      4112,
      4112,
      4112,
      4112
    }
    names = {
      null,
      null,
      null,
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
  .registers 8
  .line 108
    iput-object p2, p0, Lcom/mycompany/app/web/PdfPreview$2$1;->val$dialog:Landroid/app/ProgressDialog;
    iput-object p3, p0, Lcom/mycompany/app/web/PdfPreview$2$1;->val$cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;
    iput-object p4, p0, Lcom/mycompany/app/web/PdfPreview$2$1;->val$activity:Landroid/app/Activity;
    iput-object p5, p0, Lcom/mycompany/app/web/PdfPreview$2$1;->val$pdfFile:Ljava/io/File;
    iput-object p6, p0, Lcom/mycompany/app/web/PdfPreview$2$1;->val$displayName:Ljava/lang/String;
    iput-object p7, p0, Lcom/mycompany/app/web/PdfPreview$2$1;->val$fallback:Lcom/mycompany/app/web/PdfPreview$Fallback;
    iput-object p1, p0, Lcom/mycompany/app/web/PdfPreview$2$1;->this$0:Lcom/mycompany/app/web/PdfPreview$2;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .registers 4
  .line 111
    iget-object v0, p0, Lcom/mycompany/app/web/PdfPreview$2$1;->val$dialog:Landroid/app/ProgressDialog;
    invoke-static { v0 }, Lcom/mycompany/app/web/PdfPreview;->-$$Nest$smdismissQuietly(Landroid/app/ProgressDialog;)V
  .line 112
    iget-object v0, p0, Lcom/mycompany/app/web/PdfPreview$2$1;->val$cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-virtual { v0 }, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    move-result v0
    if-nez v0, :L2
    iget-object v0, p0, Lcom/mycompany/app/web/PdfPreview$2$1;->val$activity:Landroid/app/Activity;
    invoke-virtual { v0 }, Landroid/app/Activity;->isFinishing()Z
    move-result v0
    if-eqz v0, :L0
    goto :L2
  :L0
  .line 116
    iget-object v0, p0, Lcom/mycompany/app/web/PdfPreview$2$1;->val$activity:Landroid/app/Activity;
    iget-object v1, p0, Lcom/mycompany/app/web/PdfPreview$2$1;->val$pdfFile:Ljava/io/File;
    iget-object v2, p0, Lcom/mycompany/app/web/PdfPreview$2$1;->val$displayName:Ljava/lang/String;
    invoke-static { v0, v1, v2 }, Lcom/mycompany/app/web/PdfPreview;->-$$Nest$smopenLocalPdf(Landroid/app/Activity;Ljava/io/File;Ljava/lang/String;)Z
    move-result v0
    if-nez v0, :L1
  .line 117
    iget-object v0, p0, Lcom/mycompany/app/web/PdfPreview$2$1;->val$pdfFile:Ljava/io/File;
    invoke-static { v0 }, Lcom/mycompany/app/web/PdfPreview;->-$$Nest$smdeleteQuietly(Ljava/io/File;)V
  .line 118
    iget-object v0, p0, Lcom/mycompany/app/web/PdfPreview$2$1;->val$fallback:Lcom/mycompany/app/web/PdfPreview$Fallback;
    if-eqz v0, :L1
  .line 119
    invoke-interface { v0 }, Lcom/mycompany/app/web/PdfPreview$Fallback;->run()V
  :L1
    return-void
  :L2
  .line 113
    iget-object v0, p0, Lcom/mycompany/app/web/PdfPreview$2$1;->val$pdfFile:Ljava/io/File;
    invoke-static { v0 }, Lcom/mycompany/app/web/PdfPreview;->-$$Nest$smdeleteQuietly(Ljava/io/File;)V
    return-void
.end method
