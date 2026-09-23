.class Lcom/mycompany/app/web/WebSnsLoad$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebSnsLoad;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebSnsLoad;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebSnsLoad$14;->c:Lcom/mycompany/app/web/WebSnsLoad;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebSnsLoad$14;->c:Lcom/mycompany/app/web/WebSnsLoad;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebSnsLoad;->C:Ljava/lang/String;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iput-object v2, v0, Lcom/mycompany/app/web/WebSnsLoad;->C:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    if-eqz v3, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v3, v0, Lcom/mycompany/app/web/WebSnsLoad;->e:Lcom/mycompany/app/view/MyWebSafe;

    .line 16
    .line 17
    if-nez v3, :cond_1

    .line 18
    .line 19
    :goto_0
    return-void

    .line 20
    :cond_1
    iget-object v4, v0, Lcom/mycompany/app/web/WebSnsLoad;->t:Lcom/mycompany/app/web/WebSnsTask;

    .line 21
    .line 22
    if-nez v4, :cond_2

    .line 23
    .line 24
    new-instance v4, Lcom/mycompany/app/web/WebSnsTask;

    .line 25
    .line 26
    iget v5, v0, Lcom/mycompany/app/web/WebSnsLoad;->h:I

    .line 27
    .line 28
    new-instance v6, Lcom/mycompany/app/web/WebSnsLoad$15;

    .line 29
    .line 30
    invoke-direct {v6, v0}, Lcom/mycompany/app/web/WebSnsLoad$15;-><init>(Lcom/mycompany/app/web/WebSnsLoad;)V

    .line 31
    .line 32
    .line 33
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 34
    .line 35
    .line 36
    iput v5, v4, Lcom/mycompany/app/web/WebSnsTask;->a:I

    .line 37
    .line 38
    iput-object v6, v4, Lcom/mycompany/app/web/WebSnsTask;->b:Lcom/mycompany/app/web/WebSnsTask$SnsTaskListener;

    .line 39
    .line 40
    iput-object v4, v0, Lcom/mycompany/app/web/WebSnsLoad;->t:Lcom/mycompany/app/web/WebSnsTask;

    .line 41
    .line 42
    :cond_2
    iget-object v4, v0, Lcom/mycompany/app/web/WebSnsLoad;->t:Lcom/mycompany/app/web/WebSnsTask;

    .line 43
    .line 44
    iget-object v0, v0, Lcom/mycompany/app/web/WebSnsLoad;->b:Landroid/content/Context;

    .line 45
    .line 46
    invoke-virtual {v3}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    iget-object v5, v4, Lcom/mycompany/app/web/WebSnsTask;->c:Lcom/mycompany/app/web/WebSnsTask$LoadTask;

    .line 51
    .line 52
    if-eqz v5, :cond_3

    .line 53
    .line 54
    const/4 v6, 0x1

    .line 55
    iput-boolean v6, v5, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 56
    .line 57
    :cond_3
    iput-object v2, v4, Lcom/mycompany/app/web/WebSnsTask;->c:Lcom/mycompany/app/web/WebSnsTask$LoadTask;

    .line 58
    .line 59
    new-instance v2, Lcom/mycompany/app/web/WebSnsTask$LoadTask;

    .line 60
    .line 61
    invoke-direct {v2, v4, v3, v1}, Lcom/mycompany/app/web/WebSnsTask$LoadTask;-><init>(Lcom/mycompany/app/web/WebSnsTask;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    iput-object v2, v4, Lcom/mycompany/app/web/WebSnsTask;->c:Lcom/mycompany/app/web/WebSnsTask$LoadTask;

    .line 65
    .line 66
    invoke-virtual {v2, v0}, Lcom/mycompany/app/async/MyAsyncTask;->b(Landroid/content/Context;)V

    .line 67
    .line 68
    .line 69
    return-void
.end method
