.class Lcom/mycompany/app/web/WebViewActivity$72;
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
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$72;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$72;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget v1, v0, Lcom/mycompany/app/web/WebViewActivity;->q2:I

    .line 4
    .line 5
    iget v2, v0, Lcom/mycompany/app/web/WebViewActivity;->r2:I

    .line 6
    .line 7
    iget-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->C2:Lcom/mycompany/app/view/MyFindView;

    .line 8
    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    iget-boolean v4, v0, Lcom/mycompany/app/web/WebViewActivity;->U1:Z

    .line 12
    .line 13
    invoke-virtual {v3, v1, v2, v4}, Lcom/mycompany/app/view/MyFindView;->e(IIZ)V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {v0, v1}, Lcom/mycompany/app/web/WebViewActivity;->b8(I)V

    .line 17
    .line 18
    .line 19
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->P3:Lcom/mycompany/app/wview/WebUpView;

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    iget-boolean v2, v0, Lcom/mycompany/app/web/WebViewActivity;->U1:Z

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Lcom/mycompany/app/wview/WebUpView;->setBgColors(Z)V

    .line 26
    .line 27
    .line 28
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->U6:Landroid/view/View;

    .line 29
    .line 30
    if-nez v1, :cond_2

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    sget-boolean v2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 34
    .line 35
    if-eqz v2, :cond_3

    .line 36
    .line 37
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->trans_logo_short_back_white:I

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_3
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->trans_logo_short_back_color:I

    .line 44
    .line 45
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 46
    .line 47
    .line 48
    :goto_0
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->v3:Lcom/mycompany/app/view/MyScrollBar;

    .line 49
    .line 50
    if-eqz v1, :cond_5

    .line 51
    .line 52
    sget-boolean v2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 53
    .line 54
    if-eqz v2, :cond_4

    .line 55
    .line 56
    const v2, -0xc0c0c1

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_4
    const v2, -0x252526

    .line 61
    .line 62
    .line 63
    :goto_1
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyScrollBar;->setPreColor(I)V

    .line 64
    .line 65
    .line 66
    :cond_5
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->M2:Lcom/mycompany/app/pull/MyPullView;

    .line 67
    .line 68
    if-eqz v1, :cond_6

    .line 69
    .line 70
    iget-boolean v0, v0, Lcom/mycompany/app/web/WebViewActivity;->U1:Z

    .line 71
    .line 72
    invoke-virtual {v1, v0}, Lcom/mycompany/app/pull/MyPullView;->h(Z)V

    .line 73
    .line 74
    .line 75
    :cond_6
    return-void
.end method
