.class public Lcom/mycompany/app/web/WebSnsTwit;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/web/WebSnsTwit$LocalWebViewClient;,
        Lcom/mycompany/app/web/WebSnsTwit$WebAppInterface;
    }
.end annotation


# instance fields
.field public a:Lcom/mycompany/app/main/MainActivity;

.field public b:Landroid/content/Context;

.field public c:Lcom/mycompany/app/web/WebSnsTask$SnsTaskListener;

.field public d:Landroid/view/ViewGroup;

.field public e:Lcom/mycompany/app/view/MyWebSafe;

.field public f:Z

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Z

.field public m:Z

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:Z

.field public q:Ljava/lang/String;


# direct methods
.method public static a(Lcom/mycompany/app/web/WebSnsTwit;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebSnsTwit;->e:Lcom/mycompany/app/view/MyWebSafe;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->D5(Ljava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-eqz p1, :cond_3

    .line 11
    .line 12
    iget-boolean p1, p0, Lcom/mycompany/app/web/WebSnsTwit;->l:Z

    .line 13
    .line 14
    if-nez p1, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const/4 p1, 0x0

    .line 18
    iput-boolean p1, p0, Lcom/mycompany/app/web/WebSnsTwit;->l:Z

    .line 19
    .line 20
    iget-object p1, p0, Lcom/mycompany/app/web/WebSnsTwit;->e:Lcom/mycompany/app/view/MyWebSafe;

    .line 21
    .line 22
    if-nez p1, :cond_2

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_2
    new-instance v0, Lcom/mycompany/app/web/WebSnsTwit$5;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Lcom/mycompany/app/web/WebSnsTwit$5;-><init>(Lcom/mycompany/app/web/WebSnsTwit;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_3
    iget-boolean p1, p0, Lcom/mycompany/app/web/WebSnsTwit;->l:Z

    .line 35
    .line 36
    if-eqz p1, :cond_4

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_4
    const/4 p1, 0x1

    .line 40
    iput-boolean p1, p0, Lcom/mycompany/app/web/WebSnsTwit;->l:Z

    .line 41
    .line 42
    iget-object p1, p0, Lcom/mycompany/app/web/WebSnsTwit;->e:Lcom/mycompany/app/view/MyWebSafe;

    .line 43
    .line 44
    if-nez p1, :cond_5

    .line 45
    .line 46
    :goto_0
    return-void

    .line 47
    :cond_5
    new-instance v0, Lcom/mycompany/app/web/WebSnsTwit$6;

    .line 48
    .line 49
    invoke-direct {v0, p0}, Lcom/mycompany/app/web/WebSnsTwit$6;-><init>(Lcom/mycompany/app/web/WebSnsTwit;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 53
    .line 54
    .line 55
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebSnsTwit;->e:Lcom/mycompany/app/view/MyWebSafe;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-boolean v2, p0, Lcom/mycompany/app/web/WebSnsTwit;->f:Z

    .line 7
    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    iput-boolean v2, p0, Lcom/mycompany/app/web/WebSnsTwit;->f:Z

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/web/WebSnsTwit;->e:Lcom/mycompany/app/view/MyWebSafe;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->P6(Landroid/webkit/WebView;)V

    .line 19
    .line 20
    .line 21
    iput-object v1, p0, Lcom/mycompany/app/web/WebSnsTwit;->e:Lcom/mycompany/app/view/MyWebSafe;

    .line 22
    .line 23
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/web/WebSnsTwit;->b:Landroid/content/Context;

    .line 24
    .line 25
    invoke-static {v0}, Lcom/mycompany/app/main/MainApp;->M(Landroid/content/Context;)V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Lcom/mycompany/app/web/WebSnsTwit;->a:Lcom/mycompany/app/main/MainActivity;

    .line 29
    .line 30
    iput-object v1, p0, Lcom/mycompany/app/web/WebSnsTwit;->b:Landroid/content/Context;

    .line 31
    .line 32
    iput-object v1, p0, Lcom/mycompany/app/web/WebSnsTwit;->c:Lcom/mycompany/app/web/WebSnsTask$SnsTaskListener;

    .line 33
    .line 34
    iput-object v1, p0, Lcom/mycompany/app/web/WebSnsTwit;->d:Landroid/view/ViewGroup;

    .line 35
    .line 36
    iput-object v1, p0, Lcom/mycompany/app/web/WebSnsTwit;->g:Ljava/lang/String;

    .line 37
    .line 38
    iput-object v1, p0, Lcom/mycompany/app/web/WebSnsTwit;->h:Ljava/lang/String;

    .line 39
    .line 40
    iput-object v1, p0, Lcom/mycompany/app/web/WebSnsTwit;->i:Ljava/lang/String;

    .line 41
    .line 42
    iput-object v1, p0, Lcom/mycompany/app/web/WebSnsTwit;->j:Ljava/lang/String;

    .line 43
    .line 44
    iput-object v1, p0, Lcom/mycompany/app/web/WebSnsTwit;->k:Ljava/lang/String;

    .line 45
    .line 46
    return-void
.end method
