.class Lcom/mycompany/app/web/PdfPreview$2;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "PdfPreview.java"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcom/mycompany/app/web/PdfPreview;->open(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/mycompany/app/web/PdfPreview$Fallback;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic val$dialog:Landroid/app/ProgressDialog;

.field final synthetic val$fallback:Lcom/mycompany/app/web/PdfPreview$Fallback;

.field final synthetic val$main:Landroid/os/Handler;

.field final synthetic val$url:Ljava/lang/String;

.field final synthetic val$userAgent:Ljava/lang/String;

.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/os/Handler;Landroid/app/ProgressDialog;Lcom/mycompany/app/web/PdfPreview$Fallback;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()V"
    }
  .end annotation
  .registers 8
  .line 92
    iput-object p1, p0, Lcom/mycompany/app/web/PdfPreview$2;->val$activity:Landroid/app/Activity;
    iput-object p2, p0, Lcom/mycompany/app/web/PdfPreview$2;->val$url:Ljava/lang/String;
    iput-object p3, p0, Lcom/mycompany/app/web/PdfPreview$2;->val$userAgent:Ljava/lang/String;
    iput-object p4, p0, Lcom/mycompany/app/web/PdfPreview$2;->val$cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;
    iput-object p5, p0, Lcom/mycompany/app/web/PdfPreview$2;->val$main:Landroid/os/Handler;
    iput-object p6, p0, Lcom/mycompany/app/web/PdfPreview$2;->val$dialog:Landroid/app/ProgressDialog;
    iput-object p7, p0, Lcom/mycompany/app/web/PdfPreview$2;->val$fallback:Lcom/mycompany/app/web/PdfPreview$Fallback;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .catch Ljava/lang/Exception; { :L0 .. :L3 } :L3
  .registers 14
    const/4 v0, 1
    const/4 v1, 0
  :L0
  .line 97
    new-array v0, v0, [Ljava/lang/String;
  .line 98
    iget-object v2, p0, Lcom/mycompany/app/web/PdfPreview$2;->val$activity:Landroid/app/Activity;
    iget-object v3, p0, Lcom/mycompany/app/web/PdfPreview$2;->val$url:Ljava/lang/String;
    iget-object v4, p0, Lcom/mycompany/app/web/PdfPreview$2;->val$userAgent:Ljava/lang/String;
    invoke-static { v2, v3, v4, v0 }, Lcom/mycompany/app/web/PdfPreview;->-$$Nest$smdownloadToCache(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/io/File;
    move-result-object v1
  .line 99
    iget-object v2, p0, Lcom/mycompany/app/web/PdfPreview$2;->val$cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-virtual { v2 }, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    move-result v2
    if-eqz v2, :L1
  .line 100
    invoke-static { v1 }, Lcom/mycompany/app/web/PdfPreview;->-$$Nest$smdeleteQuietly(Ljava/io/File;)V
    return-void
  :L1
    if-eqz v1, :L2
  .line 103
    invoke-virtual { v1 }, Ljava/io/File;->isFile()Z
    move-result v2
    if-eqz v2, :L2
    invoke-virtual { v1 }, Ljava/io/File;->length()J
    move-result-wide v2
    const-wide/16 v4, 0
    cmp-long v6, v2, v4
    if-eqz v6, :L2
  .line 107
    iget-object v2, p0, Lcom/mycompany/app/web/PdfPreview$2;->val$url:Ljava/lang/String;
    const/4 v3, 0
    aget-object v0, v0, v3
    invoke-static { v2, v0 }, Lcom/mycompany/app/web/PdfPreview;->resolveDisplayName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v11
  .line 108
    iget-object v0, p0, Lcom/mycompany/app/web/PdfPreview$2;->val$main:Landroid/os/Handler;
    new-instance v2, Lcom/mycompany/app/web/PdfPreview$2$1;
    iget-object v7, p0, Lcom/mycompany/app/web/PdfPreview$2;->val$dialog:Landroid/app/ProgressDialog;
    iget-object v8, p0, Lcom/mycompany/app/web/PdfPreview$2;->val$cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;
    iget-object v9, p0, Lcom/mycompany/app/web/PdfPreview$2;->val$activity:Landroid/app/Activity;
    iget-object v12, p0, Lcom/mycompany/app/web/PdfPreview$2;->val$fallback:Lcom/mycompany/app/web/PdfPreview$Fallback;
    move-object v5, v2
    move-object v6, p0
    move-object v10, v1
    invoke-direct/range { v5 .. v12 }, Lcom/mycompany/app/web/PdfPreview$2$1;-><init>(Lcom/mycompany/app/web/PdfPreview$2;Landroid/app/ProgressDialog;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/app/Activity;Ljava/io/File;Ljava/lang/String;Lcom/mycompany/app/web/PdfPreview$Fallback;)V
    invoke-virtual { v0, v2 }, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    goto :L4
  :L2
  .line 104
    new-instance v0, Ljava/io/IOException;
    const-string v2, "empty pdf"
    invoke-direct { v0, v2 }, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    throw v0
  :L3
  .line 125
    invoke-static { v1 }, Lcom/mycompany/app/web/PdfPreview;->-$$Nest$smdeleteQuietly(Ljava/io/File;)V
  .line 126
    iget-object v0, p0, Lcom/mycompany/app/web/PdfPreview$2;->val$main:Landroid/os/Handler;
    new-instance v1, Lcom/mycompany/app/web/PdfPreview$2$2;
    iget-object v2, p0, Lcom/mycompany/app/web/PdfPreview$2;->val$dialog:Landroid/app/ProgressDialog;
    iget-object v3, p0, Lcom/mycompany/app/web/PdfPreview$2;->val$cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;
    iget-object v4, p0, Lcom/mycompany/app/web/PdfPreview$2;->val$fallback:Lcom/mycompany/app/web/PdfPreview$Fallback;
    invoke-direct { v1, p0, v2, v3, v4 }, Lcom/mycompany/app/web/PdfPreview$2$2;-><init>(Lcom/mycompany/app/web/PdfPreview$2;Landroid/app/ProgressDialog;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/mycompany/app/web/PdfPreview$Fallback;)V
    invoke-virtual { v0, v1 }, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
  :L4
    return-void
.end method
