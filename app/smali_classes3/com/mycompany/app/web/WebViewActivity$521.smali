.class Lcom/mycompany/app/web/WebViewActivity$521;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/main/MainApp$AdBusyListener;


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
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$521;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$521;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->T9:Z

    .line 4
    .line 5
    if-nez v1, :cond_3

    .line 6
    .line 7
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->L3:Z

    .line 8
    .line 9
    if-nez v1, :cond_3

    .line 10
    .line 11
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->M3:Z

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->bn:Z

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->d2:Lcom/mycompany/app/main/MainWebDestroy;

    .line 22
    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    iget-boolean v2, v1, Lcom/mycompany/app/main/MainWebDestroy;->e:Z

    .line 26
    .line 27
    if-eqz v2, :cond_2

    .line 28
    .line 29
    iget-boolean v1, v1, Lcom/mycompany/app/main/MainWebDestroy;->g:Z

    .line 30
    .line 31
    if-nez v1, :cond_2

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->x5()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    return v0

    .line 39
    :cond_3
    :goto_0
    const/4 v0, 0x1

    .line 40
    return v0
.end method

.method public final b(IZ)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lcom/mycompany/app/web/WebViewActivity$521;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 3
    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    iput-boolean p2, v1, Lcom/mycompany/app/web/WebViewActivity;->Oc:Z

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iput-boolean p2, v1, Lcom/mycompany/app/web/WebViewActivity;->Pc:Z

    .line 10
    .line 11
    return-void
.end method
