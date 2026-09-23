.class Lcom/mycompany/app/web/WebViewActivity$645;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


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
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$645;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$645;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->yo:Ljava/lang/String;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iput-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->yo:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-boolean v2, v0, Lcom/mycompany/app/web/WebViewActivity;->uo:Z

    .line 16
    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    iget-boolean v2, v0, Lcom/mycompany/app/web/WebViewActivity;->vo:Z

    .line 21
    .line 22
    if-eqz v2, :cond_2

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_2
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->m6:Lcom/mycompany/app/dialog/DialogUrlLink;

    .line 26
    .line 27
    if-eqz v2, :cond_3

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_3
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->l9:Landroid/view/ActionMode;

    .line 31
    .line 32
    if-eqz v2, :cond_4

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_4
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 36
    .line 37
    if-nez v2, :cond_5

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_5
    const/4 v3, 0x1

    .line 41
    iput-boolean v3, v2, Lcom/mycompany/app/web/WebNestView;->S0:Z

    .line 42
    .line 43
    iget-boolean v2, v0, Lcom/mycompany/app/web/WebViewActivity;->G1:Z

    .line 44
    .line 45
    if-eqz v2, :cond_6

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_6
    iget-boolean v2, v0, Lcom/mycompany/app/web/WebViewActivity;->Ql:Z

    .line 49
    .line 50
    if-eqz v2, :cond_7

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_7
    iput-boolean v3, v0, Lcom/mycompany/app/web/WebViewActivity;->Ql:Z

    .line 54
    .line 55
    iput-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Tl:Ljava/lang/String;

    .line 56
    .line 57
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 58
    .line 59
    if-nez v1, :cond_8

    .line 60
    .line 61
    :goto_0
    return-void

    .line 62
    :cond_8
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$440;

    .line 63
    .line 64
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebViewActivity$440;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 68
    .line 69
    .line 70
    return-void
.end method
