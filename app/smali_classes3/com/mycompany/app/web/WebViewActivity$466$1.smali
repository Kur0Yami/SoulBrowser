.class Lcom/mycompany/app/web/WebViewActivity$466$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity$466;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity$466;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$466$1;->c:Lcom/mycompany/app/web/WebViewActivity$466;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$466$1;->c:Lcom/mycompany/app/web/WebViewActivity$466;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$466;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->j9:Z

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    sget v1, Lcom/mycompany/app/pref/PrefWeb;->V:I

    .line 11
    .line 12
    if-nez v1, :cond_1

    .line 13
    .line 14
    sget v1, Lcom/mycompany/app/pref/PrefWeb;->W:I

    .line 15
    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->f2()V

    .line 20
    .line 21
    .line 22
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->j9:Z

    .line 23
    .line 24
    if-nez v1, :cond_2

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_2
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 28
    .line 29
    if-nez v1, :cond_3

    .line 30
    .line 31
    :goto_0
    return-void

    .line 32
    :cond_3
    new-instance v1, Lcom/mycompany/app/web/WebViewActivity$SearchTask;

    .line 33
    .line 34
    invoke-direct {v1, v0}, Lcom/mycompany/app/web/WebViewActivity$SearchTask;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 35
    .line 36
    .line 37
    iput-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->E2:Lcom/mycompany/app/web/WebViewActivity$SearchTask;

    .line 38
    .line 39
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 40
    .line 41
    invoke-virtual {v1, v0}, Lcom/mycompany/app/async/MyAsyncTask;->c(Landroid/content/Context;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method
