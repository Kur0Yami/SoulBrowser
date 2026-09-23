.class Lcom/mycompany/app/web/WebViewActivity$139$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity$139;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity$139;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$139$1;->c:Lcom/mycompany/app/web/WebViewActivity$139;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$139$1;->c:Lcom/mycompany/app/web/WebViewActivity$139;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$139;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Tf:Lcom/mycompany/app/web/WebViewActivity$TabViewListener;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    iput-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->Tf:Lcom/mycompany/app/web/WebViewActivity$TabViewListener;

    .line 9
    .line 10
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->H2:Lcom/mycompany/app/web/WebNestFrame;

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    if-eqz v2, :cond_2

    .line 14
    .line 15
    iget-object v4, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 16
    .line 17
    if-nez v4, :cond_0

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    invoke-virtual {v2}, Lcom/mycompany/app/web/WebNestFrame;->G()V

    .line 21
    .line 22
    .line 23
    iget v4, v2, Lcom/mycompany/app/web/WebNestFrame;->x:F

    .line 24
    .line 25
    const/4 v5, 0x0

    .line 26
    invoke-static {v4, v5}, Ljava/lang/Float;->compare(FF)I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    if-nez v4, :cond_1

    .line 31
    .line 32
    iget v4, v2, Lcom/mycompany/app/web/WebNestFrame;->A:F

    .line 33
    .line 34
    invoke-static {v4, v5}, Ljava/lang/Float;->compare(FF)I

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-nez v4, :cond_1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    iput v5, v2, Lcom/mycompany/app/web/WebNestFrame;->x:F

    .line 42
    .line 43
    iput v5, v2, Lcom/mycompany/app/web/WebNestFrame;->A:F

    .line 44
    .line 45
    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 46
    .line 47
    .line 48
    :goto_0
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->H2:Lcom/mycompany/app/web/WebNestFrame;

    .line 49
    .line 50
    invoke-virtual {v2, v3}, Lcom/mycompany/app/web/WebNestFrame;->w(Z)V

    .line 51
    .line 52
    .line 53
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->H2:Lcom/mycompany/app/web/WebNestFrame;

    .line 54
    .line 55
    invoke-virtual {v2, v3}, Lcom/mycompany/app/web/WebNestFrame;->setVisibility(I)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->r3()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    const/4 v4, 0x1

    .line 63
    invoke-virtual {v0, v2, v3, v4}, Lcom/mycompany/app/web/WebViewActivity;->T8(Ljava/lang/String;ZZ)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v4}, Lcom/mycompany/app/web/WebViewActivity;->u7(Z)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->n7()V

    .line 70
    .line 71
    .line 72
    iput-boolean v3, v0, Lcom/mycompany/app/web/WebViewActivity;->i9:Z

    .line 73
    .line 74
    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    .line 75
    .line 76
    invoke-interface {v1}, Lcom/mycompany/app/web/WebViewActivity$TabViewListener;->a()V

    .line 77
    .line 78
    .line 79
    :cond_3
    iput-boolean v3, v0, Lcom/mycompany/app/web/WebViewActivity;->vc:Z

    .line 80
    .line 81
    return-void
.end method
