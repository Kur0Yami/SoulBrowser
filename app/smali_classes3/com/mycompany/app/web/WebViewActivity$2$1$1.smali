.class Lcom/mycompany/app/web/WebViewActivity$2$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity$2$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity$2$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$2$1$1;->c:Lcom/mycompany/app/web/WebViewActivity$2$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$2$1$1;->c:Lcom/mycompany/app/web/WebViewActivity$2$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$2$1;->c:Lcom/mycompany/app/web/WebViewActivity$2;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$2;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity;->W1:Ljava/lang/Object;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    monitor-enter v0

    .line 13
    :try_start_0
    iget-object v1, p0, Lcom/mycompany/app/web/WebViewActivity$2$1$1;->c:Lcom/mycompany/app/web/WebViewActivity$2$1;

    .line 14
    .line 15
    iget-object v1, v1, Lcom/mycompany/app/web/WebViewActivity$2$1;->c:Lcom/mycompany/app/web/WebViewActivity$2;

    .line 16
    .line 17
    iget-object v1, v1, Lcom/mycompany/app/web/WebViewActivity$2;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    iput-boolean v2, v1, Lcom/mycompany/app/web/WebViewActivity;->Y1:Z

    .line 21
    .line 22
    iget-boolean v2, v1, Lcom/mycompany/app/web/WebViewActivity;->X1:Z

    .line 23
    .line 24
    if-nez v2, :cond_1

    .line 25
    .line 26
    monitor-exit v0

    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception v1

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    invoke-static {v1}, Lcom/mycompany/app/web/WebViewActivity;->P0(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    throw v1
.end method
