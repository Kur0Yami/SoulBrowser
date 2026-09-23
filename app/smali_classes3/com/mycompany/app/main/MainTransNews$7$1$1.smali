.class Lcom/mycompany/app/main/MainTransNews$7$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/MainTransNews$7$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainTransNews$7$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainTransNews$7$1$1;->c:Lcom/mycompany/app/main/MainTransNews$7$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainTransNews$7$1$1;->c:Lcom/mycompany/app/main/MainTransNews$7$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/main/MainTransNews$7$1;->c:Lcom/mycompany/app/main/MainTransNews$7;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/main/MainTransNews$7;->c:Lcom/mycompany/app/main/MainTransNews;

    .line 6
    .line 7
    iget-object v2, v1, Lcom/mycompany/app/main/MainTransNews;->f:Lcom/mycompany/app/view/MyWebSafe;

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    goto :goto_2

    .line 12
    :cond_0
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->N3()Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    const/4 v3, 0x0

    .line 17
    const/4 v4, 0x0

    .line 18
    if-nez v2, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    invoke-static {v4}, Lcom/mycompany/app/main/MainUtil;->M2(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 26
    .line 27
    .line 28
    move-result v6

    .line 29
    if-eqz v6, :cond_2

    .line 30
    .line 31
    :goto_0
    move-object v2, v4

    .line 32
    goto :goto_1

    .line 33
    :cond_2
    invoke-virtual {v2, v3, v5}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    :goto_1
    iput-object v2, v1, Lcom/mycompany/app/main/MainTransNews;->j:Ljava/lang/String;

    .line 41
    .line 42
    iget-object v0, v0, Lcom/mycompany/app/main/MainTransNews$7;->c:Lcom/mycompany/app/main/MainTransNews;

    .line 43
    .line 44
    iget-boolean v1, v0, Lcom/mycompany/app/main/MainTransNews;->h:Z

    .line 45
    .line 46
    if-eqz v1, :cond_4

    .line 47
    .line 48
    iget-object v1, v0, Lcom/mycompany/app/main/MainTransNews;->j:Ljava/lang/String;

    .line 49
    .line 50
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_3

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_3
    iget-object v1, v0, Lcom/mycompany/app/main/MainTransNews;->j:Ljava/lang/String;

    .line 58
    .line 59
    iput-boolean v3, v0, Lcom/mycompany/app/main/MainTransNews;->h:Z

    .line 60
    .line 61
    iput-object v4, v0, Lcom/mycompany/app/main/MainTransNews;->j:Ljava/lang/String;

    .line 62
    .line 63
    iget-object v0, v0, Lcom/mycompany/app/main/MainTransNews;->f:Lcom/mycompany/app/view/MyWebSafe;

    .line 64
    .line 65
    const/4 v2, 0x1

    .line 66
    invoke-static {v0, v1, v2}, Lcom/mycompany/app/main/MainUtil;->J(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 67
    .line 68
    .line 69
    :cond_4
    :goto_2
    return-void
.end method
