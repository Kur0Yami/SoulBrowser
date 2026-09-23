.class Lcom/mycompany/app/web/WebViewActivity$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/web/WebViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$15;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/mycompany/app/pref/PrefTts;->H:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iget-object v2, p0, Lcom/mycompany/app/web/WebViewActivity$15;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-boolean v0, v2, Lcom/mycompany/app/web/WebViewActivity;->L3:Z

    .line 9
    .line 10
    xor-int/2addr v0, v1

    .line 11
    invoke-virtual {v2, v0}, Lcom/mycompany/app/web/WebViewActivity;->K7(Z)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-boolean v0, v2, Lcom/mycompany/app/web/WebViewActivity;->L3:Z

    .line 15
    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    invoke-virtual {v2}, Lcom/mycompany/app/web/WebViewActivity;->N7()V

    .line 19
    .line 20
    .line 21
    iget-boolean v0, v2, Lcom/mycompany/app/web/WebViewActivity;->j9:Z

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    iget-boolean v0, v2, Lcom/mycompany/app/web/WebViewActivity;->Ea:Z

    .line 26
    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    iput-boolean v1, v2, Lcom/mycompany/app/web/WebViewActivity;->Ea:Z

    .line 30
    .line 31
    invoke-virtual {v2}, Lcom/mycompany/app/web/WebViewActivity;->v7()V

    .line 32
    .line 33
    .line 34
    :cond_1
    invoke-virtual {v2}, Lcom/mycompany/app/web/WebViewActivity;->H3()V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    iget-object v0, v2, Lcom/mycompany/app/web/WebViewActivity;->C2:Lcom/mycompany/app/view/MyFindView;

    .line 39
    .line 40
    if-eqz v0, :cond_3

    .line 41
    .line 42
    iget-boolean v0, v0, Lcom/mycompany/app/view/MyFindView;->g:Z

    .line 43
    .line 44
    if-eqz v0, :cond_3

    .line 45
    .line 46
    invoke-virtual {v2}, Lcom/mycompany/app/web/WebViewActivity;->C2()V

    .line 47
    .line 48
    .line 49
    :cond_3
    :goto_0
    iget-object v0, v2, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 50
    .line 51
    if-nez v0, :cond_4

    .line 52
    .line 53
    return-void

    .line 54
    :cond_4
    new-instance v1, Lcom/mycompany/app/web/WebViewActivity$15$1;

    .line 55
    .line 56
    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebViewActivity$15$1;-><init>(Lcom/mycompany/app/web/WebViewActivity$15;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 60
    .line 61
    .line 62
    return-void
.end method
