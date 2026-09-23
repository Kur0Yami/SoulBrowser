.class Lcom/mycompany/app/web/PdfPreview$2$2;
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

.field final synthetic val$cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic val$dialog:Landroid/app/ProgressDialog;

.field final synthetic val$fallback:Lcom/mycompany/app/web/PdfPreview$Fallback;

.method constructor <init>(Lcom/mycompany/app/web/PdfPreview$2;Landroid/app/ProgressDialog;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/mycompany/app/web/PdfPreview$Fallback;)V
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
  .line 126
    iput-object p2, p0, Lcom/mycompany/app/web/PdfPreview$2$2;->val$dialog:Landroid/app/ProgressDialog;
    iput-object p3, p0, Lcom/mycompany/app/web/PdfPreview$2$2;->val$cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;
    iput-object p4, p0, Lcom/mycompany/app/web/PdfPreview$2$2;->val$fallback:Lcom/mycompany/app/web/PdfPreview$Fallback;
    iput-object p1, p0, Lcom/mycompany/app/web/PdfPreview$2$2;->this$0:Lcom/mycompany/app/web/PdfPreview$2;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .registers 2
  .line 129
    iget-object v0, p0, Lcom/mycompany/app/web/PdfPreview$2$2;->val$dialog:Landroid/app/ProgressDialog;
    invoke-static { v0 }, Lcom/mycompany/app/web/PdfPreview;->-$$Nest$smdismissQuietly(Landroid/app/ProgressDialog;)V
  .line 130
    iget-object v0, p0, Lcom/mycompany/app/web/PdfPreview$2$2;->val$cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-virtual { v0 }, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    move-result v0
    if-nez v0, :L0
    iget-object v0, p0, Lcom/mycompany/app/web/PdfPreview$2$2;->val$fallback:Lcom/mycompany/app/web/PdfPreview$Fallback;
    if-eqz v0, :L0
  .line 131
    invoke-interface { v0 }, Lcom/mycompany/app/web/PdfPreview$Fallback;->run()V
  :L0
    return-void
.end method
