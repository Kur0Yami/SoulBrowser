.class Lcom/mycompany/app/web/WebHmgTask$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebHmgTask$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebHmgTask$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebHmgTask$1$1;->c:Lcom/mycompany/app/web/WebHmgTask$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebHmgTask$1$1;->c:Lcom/mycompany/app/web/WebHmgTask$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebHmgTask$1;->a:Lcom/mycompany/app/web/WebHmgTask;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/web/WebHmgTask;->g:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v2, v0, Lcom/mycompany/app/web/WebHmgTask;->h:Ljava/lang/String;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    iput-object v3, v0, Lcom/mycompany/app/web/WebHmgTask;->g:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v3, v0, Lcom/mycompany/app/web/WebHmgTask;->h:Ljava/lang/String;

    .line 13
    .line 14
    iget-object v4, v0, Lcom/mycompany/app/web/WebHmgTask;->c:Lcom/mycompany/app/web/WebNestView;

    .line 15
    .line 16
    if-nez v4, :cond_0

    .line 17
    .line 18
    iget-object v0, v0, Lcom/mycompany/app/web/WebHmgTask;->d:Lcom/mycompany/app/web/WebHmgTask$HmgTaskListener;

    .line 19
    .line 20
    if-eqz v0, :cond_3

    .line 21
    .line 22
    invoke-interface {v0}, Lcom/mycompany/app/web/WebHmgTask$HmgTaskListener;->a()V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    iget-object v4, v0, Lcom/mycompany/app/web/WebHmgTask;->b:Landroid/content/Context;

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebHmgTask;->b()V

    .line 29
    .line 30
    .line 31
    invoke-static {v1}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    if-eqz v5, :cond_2

    .line 36
    .line 37
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    if-eqz v5, :cond_1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    new-instance v3, Lcom/mycompany/app/web/WebHmgTask$LoadTask;

    .line 45
    .line 46
    invoke-direct {v3, v0, v1, v2}, Lcom/mycompany/app/web/WebHmgTask$LoadTask;-><init>(Lcom/mycompany/app/web/WebHmgTask;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iput-object v3, v0, Lcom/mycompany/app/web/WebHmgTask;->e:Lcom/mycompany/app/web/WebHmgTask$LoadTask;

    .line 50
    .line 51
    invoke-virtual {v3, v4}, Lcom/mycompany/app/async/MyAsyncTask;->b(Landroid/content/Context;)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_2
    :goto_0
    iget-object v0, v0, Lcom/mycompany/app/web/WebHmgTask;->d:Lcom/mycompany/app/web/WebHmgTask$HmgTaskListener;

    .line 56
    .line 57
    if-eqz v0, :cond_3

    .line 58
    .line 59
    const/4 v1, -0x1

    .line 60
    invoke-interface {v0, v3, v3, v1}, Lcom/mycompany/app/web/WebHmgTask$HmgTaskListener;->c(Ljava/util/List;Ljava/util/List;I)V

    .line 61
    .line 62
    .line 63
    :cond_3
    return-void
.end method
