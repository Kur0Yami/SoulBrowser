.class Lcom/mycompany/app/web/PdfPreview$1;
.super Ljava/lang/Object;
.implements Landroid/content/DialogInterface$OnCancelListener;
.source "PdfPreview.java"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcom/mycompany/app/web/PdfPreview;->open(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/mycompany/app/web/PdfPreview$Fallback;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic val$cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

.method constructor <init>(Ljava/util/concurrent/atomic/AtomicBoolean;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()V"
    }
  .end annotation
  .registers 2
  .line 82
    iput-object p1, p0, Lcom/mycompany/app/web/PdfPreview$1;->val$cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
  .registers 3
  .line 85
    iget-object p1, p0, Lcom/mycompany/app/web/PdfPreview$1;->val$cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;
    const/4 v0, 1
    invoke-virtual { p1, v0 }, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    return-void
.end method
