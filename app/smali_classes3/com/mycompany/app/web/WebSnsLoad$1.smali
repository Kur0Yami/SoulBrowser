.class Lcom/mycompany/app/web/WebSnsLoad$1;
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
    iput-object p1, p0, Lcom/mycompany/app/web/WebSnsLoad$1;->c:Lcom/mycompany/app/web/WebSnsLoad;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebSnsLoad$1;->c:Lcom/mycompany/app/web/WebSnsLoad;

    .line 2
    .line 3
    iget v1, v0, Lcom/mycompany/app/web/WebSnsLoad;->h:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-ne v1, v2, :cond_4

    .line 7
    .line 8
    iget v1, v0, Lcom/mycompany/app/web/WebSnsLoad;->o:I

    .line 9
    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    iput-boolean v2, v0, Lcom/mycompany/app/web/WebSnsLoad;->p:Z

    .line 13
    .line 14
    invoke-static {v0}, Lcom/mycompany/app/web/WebSnsLoad;->b(Lcom/mycompany/app/web/WebSnsLoad;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebSnsLoad;->q:Z

    .line 19
    .line 20
    if-eqz v1, :cond_3

    .line 21
    .line 22
    iget-object v1, v0, Lcom/mycompany/app/web/WebSnsLoad;->v:Lcom/mycompany/app/web/WebSnsInsta;

    .line 23
    .line 24
    if-nez v1, :cond_3

    .line 25
    .line 26
    iget-object v1, v0, Lcom/mycompany/app/web/WebSnsLoad;->d:Landroid/view/ViewGroup;

    .line 27
    .line 28
    if-nez v1, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    new-instance v2, Lcom/mycompany/app/web/WebSnsInsta;

    .line 32
    .line 33
    iget-object v3, v0, Lcom/mycompany/app/web/WebSnsLoad;->a:Lcom/mycompany/app/main/MainActivity;

    .line 34
    .line 35
    iget-object v4, v0, Lcom/mycompany/app/web/WebSnsLoad;->i:Ljava/lang/String;

    .line 36
    .line 37
    new-instance v5, Lcom/mycompany/app/web/WebSnsLoad$10;

    .line 38
    .line 39
    invoke-direct {v5, v0}, Lcom/mycompany/app/web/WebSnsLoad$10;-><init>(Lcom/mycompany/app/web/WebSnsLoad;)V

    .line 40
    .line 41
    .line 42
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 43
    .line 44
    .line 45
    if-eqz v3, :cond_2

    .line 46
    .line 47
    iput-object v3, v2, Lcom/mycompany/app/web/WebSnsInsta;->a:Lcom/mycompany/app/main/MainActivity;

    .line 48
    .line 49
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    iput-object v3, v2, Lcom/mycompany/app/web/WebSnsInsta;->b:Landroid/content/Context;

    .line 54
    .line 55
    iput-object v5, v2, Lcom/mycompany/app/web/WebSnsInsta;->c:Lcom/mycompany/app/web/WebSnsTask$SnsTaskListener;

    .line 56
    .line 57
    iput-object v1, v2, Lcom/mycompany/app/web/WebSnsInsta;->d:Landroid/view/ViewGroup;

    .line 58
    .line 59
    iput-object v4, v2, Lcom/mycompany/app/web/WebSnsInsta;->g:Ljava/lang/String;

    .line 60
    .line 61
    new-instance v3, Lcom/mycompany/app/web/WebSnsInsta$1;

    .line 62
    .line 63
    invoke-direct {v3, v2}, Lcom/mycompany/app/web/WebSnsInsta$1;-><init>(Lcom/mycompany/app/web/WebSnsInsta;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 67
    .line 68
    .line 69
    :cond_2
    iput-object v2, v0, Lcom/mycompany/app/web/WebSnsLoad;->v:Lcom/mycompany/app/web/WebSnsInsta;

    .line 70
    .line 71
    :cond_3
    :goto_0
    return-void

    .line 72
    :cond_4
    invoke-static {v0}, Lcom/mycompany/app/web/WebSnsLoad;->b(Lcom/mycompany/app/web/WebSnsLoad;)V

    .line 73
    .line 74
    .line 75
    return-void
.end method
