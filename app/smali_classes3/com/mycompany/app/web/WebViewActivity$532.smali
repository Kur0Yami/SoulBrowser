.class Lcom/mycompany/app/web/WebViewActivity$532;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogLoadImg$LoadImgListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/web/WebViewActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$532;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget v0, Lcom/mycompany/app/web/WebViewActivity;->Fo:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$532;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->C6()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->d4()V

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-virtual {v0, v1, p1, v2, v1}, Lcom/mycompany/app/web/WebViewActivity;->F1(Lcom/mycompany/app/web/WebNestFrame;Ljava/lang/String;ZLcom/mycompany/app/web/WebViewActivity$TabAddListener;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final c(Z)V
    .locals 2

    .line 1
    sget v0, Lcom/mycompany/app/web/WebViewActivity;->Fo:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$532;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->C6()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->d4()V

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    iput-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->z9:Z

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    invoke-static {v0}, Lcom/mycompany/app/web/WebViewActivity;->s1(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public final d(Ljava/lang/String;Ljava/util/List;)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$532;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->tb:Lcom/google/android/gms/cast/framework/CastSession;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_2

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/Session;->c()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_2

    .line 13
    .line 14
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->tb:Lcom/google/android/gms/cast/framework/CastSession;

    .line 15
    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->dc:Lcom/mycompany/app/cast/CastUtil;

    .line 20
    .line 21
    if-eqz v3, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    new-instance v3, Lcom/mycompany/app/cast/CastUtil;

    .line 25
    .line 26
    iget-object v4, v0, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 27
    .line 28
    iget-object v5, v0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 29
    .line 30
    new-instance v6, Lcom/mycompany/app/web/WebViewActivity$38;

    .line 31
    .line 32
    invoke-direct {v6, v0}, Lcom/mycompany/app/web/WebViewActivity$38;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 33
    .line 34
    .line 35
    invoke-direct {v3, v4, v1, v5, v6}, Lcom/mycompany/app/cast/CastUtil;-><init>(Landroid/content/Context;Lcom/google/android/gms/cast/framework/CastSession;Landroid/os/Handler;Lcom/mycompany/app/cast/CastUtil$CastSendListener;)V

    .line 36
    .line 37
    .line 38
    iput-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->dc:Lcom/mycompany/app/cast/CastUtil;

    .line 39
    .line 40
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->B8:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {v3, v2, v1, p1, p2}, Lcom/mycompany/app/cast/CastUtil;->c(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 43
    .line 44
    .line 45
    :goto_0
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->C6()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->d4()V

    .line 49
    .line 50
    .line 51
    const/4 p1, 0x1

    .line 52
    iput-boolean p1, v0, Lcom/mycompany/app/web/WebViewActivity;->z9:Z

    .line 53
    .line 54
    return p1

    .line 55
    :cond_2
    return v2
.end method
