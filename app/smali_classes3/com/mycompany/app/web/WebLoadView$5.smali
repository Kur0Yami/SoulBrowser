.class Lcom/mycompany/app/web/WebLoadView$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/mycompany/app/web/WebLoadTask;->c()Lcom/mycompany/app/web/WebLoadTask;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, v0, Lcom/mycompany/app/web/WebLoadTask;->b:Landroid/webkit/WebView;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v1, 0x2

    .line 11
    iput v1, v0, Lcom/mycompany/app/web/WebLoadTask;->e:I

    .line 12
    .line 13
    iget-object v0, v0, Lcom/mycompany/app/web/WebLoadTask;->c:Lcom/mycompany/app/web/WebLoadTask$WebLoadTaskListener;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-interface {v0}, Lcom/mycompany/app/web/WebLoadTask$WebLoadTaskListener;->a()V

    .line 18
    .line 19
    .line 20
    :cond_1
    :goto_0
    return-void
.end method
