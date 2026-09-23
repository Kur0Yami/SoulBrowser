.class Lcom/mycompany/app/web/WebEmgTask$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebEmgTask$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebEmgTask$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebEmgTask$1$1;->c:Lcom/mycompany/app/web/WebEmgTask$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgTask$1$1;->c:Lcom/mycompany/app/web/WebEmgTask$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebEmgTask$1;->a:Lcom/mycompany/app/web/WebEmgTask;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/web/WebEmgTask;->g:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v2, v0, Lcom/mycompany/app/web/WebEmgTask;->h:Ljava/lang/String;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    iput-object v3, v0, Lcom/mycompany/app/web/WebEmgTask;->g:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v3, v0, Lcom/mycompany/app/web/WebEmgTask;->h:Ljava/lang/String;

    .line 13
    .line 14
    iget-object v4, v0, Lcom/mycompany/app/web/WebEmgTask;->c:Lcom/mycompany/app/web/WebNestView;

    .line 15
    .line 16
    if-nez v4, :cond_0

    .line 17
    .line 18
    iget-object v0, v0, Lcom/mycompany/app/web/WebEmgTask;->d:Lcom/mycompany/app/web/WebEmgTask$EmgTaskListener;

    .line 19
    .line 20
    if-eqz v0, :cond_4

    .line 21
    .line 22
    invoke-interface {v0}, Lcom/mycompany/app/web/WebEmgTask$EmgTaskListener;->a()V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    iget-object v4, v0, Lcom/mycompany/app/web/WebEmgTask;->b:Landroid/content/Context;

    .line 27
    .line 28
    const/4 v5, 0x0

    .line 29
    iput-boolean v5, v0, Lcom/mycompany/app/web/WebEmgTask;->f:Z

    .line 30
    .line 31
    iget-object v5, v0, Lcom/mycompany/app/web/WebEmgTask;->e:Lcom/mycompany/app/web/WebEmgTask$LoadTask;

    .line 32
    .line 33
    if-eqz v5, :cond_1

    .line 34
    .line 35
    const/4 v6, 0x1

    .line 36
    iput-boolean v6, v5, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 37
    .line 38
    :cond_1
    iput-object v3, v0, Lcom/mycompany/app/web/WebEmgTask;->e:Lcom/mycompany/app/web/WebEmgTask$LoadTask;

    .line 39
    .line 40
    invoke-static {v1}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    if-eqz v5, :cond_3

    .line 45
    .line 46
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    if-eqz v5, :cond_2

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    new-instance v3, Lcom/mycompany/app/web/WebEmgTask$LoadTask;

    .line 54
    .line 55
    invoke-direct {v3, v0, v1, v2}, Lcom/mycompany/app/web/WebEmgTask$LoadTask;-><init>(Lcom/mycompany/app/web/WebEmgTask;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    iput-object v3, v0, Lcom/mycompany/app/web/WebEmgTask;->e:Lcom/mycompany/app/web/WebEmgTask$LoadTask;

    .line 59
    .line 60
    invoke-virtual {v3, v4}, Lcom/mycompany/app/async/MyAsyncTask;->b(Landroid/content/Context;)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :cond_3
    :goto_0
    iget-object v0, v0, Lcom/mycompany/app/web/WebEmgTask;->d:Lcom/mycompany/app/web/WebEmgTask$EmgTaskListener;

    .line 65
    .line 66
    if-eqz v0, :cond_4

    .line 67
    .line 68
    const/4 v1, -0x1

    .line 69
    invoke-interface {v0, v3, v1, v1, v3}, Lcom/mycompany/app/web/WebEmgTask$EmgTaskListener;->c(Ljava/util/ArrayList;IILjava/lang/String;)V

    .line 70
    .line 71
    .line 72
    :cond_4
    return-void
.end method
