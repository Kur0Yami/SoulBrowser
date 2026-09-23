.class Lcom/mycompany/app/dialog/DialogGreeting$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/web/WebNestView$WebViewListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogGreeting;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogGreeting;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogGreeting$6;->a:Lcom/mycompany/app/dialog/DialogGreeting;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final b()V
    .locals 0

    .line 1
    return-void
.end method

.method public final c(I)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-ge p1, v1, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    move v1, v0

    .line 7
    :goto_0
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogGreeting$6;->a:Lcom/mycompany/app/dialog/DialogGreeting;

    .line 8
    .line 9
    invoke-virtual {v2, v1}, Lcom/mycompany/app/view/MyDialogBottom;->y(Z)V

    .line 10
    .line 11
    .line 12
    iget v1, v2, Lcom/mycompany/app/dialog/DialogGreeting;->w0:I

    .line 13
    .line 14
    iget-object v3, v2, Lcom/mycompany/app/dialog/DialogGreeting;->k0:Landroid/view/View;

    .line 15
    .line 16
    if-nez v3, :cond_1

    .line 17
    .line 18
    goto :goto_2

    .line 19
    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_2

    .line 24
    .line 25
    goto :goto_2

    .line 26
    :cond_2
    iget-object v3, v2, Lcom/mycompany/app/dialog/DialogGreeting;->k0:Landroid/view/View;

    .line 27
    .line 28
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-nez v3, :cond_3

    .line 33
    .line 34
    goto :goto_2

    .line 35
    :cond_3
    iget v4, v2, Lcom/mycompany/app/dialog/DialogGreeting;->x0:I

    .line 36
    .line 37
    sub-int v1, p1, v1

    .line 38
    .line 39
    add-int/2addr v1, v4

    .line 40
    iput v1, v2, Lcom/mycompany/app/dialog/DialogGreeting;->x0:I

    .line 41
    .line 42
    if-le v1, v3, :cond_4

    .line 43
    .line 44
    iput v3, v2, Lcom/mycompany/app/dialog/DialogGreeting;->x0:I

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_4
    if-gez v1, :cond_5

    .line 48
    .line 49
    iput v0, v2, Lcom/mycompany/app/dialog/DialogGreeting;->x0:I

    .line 50
    .line 51
    :cond_5
    :goto_1
    iget-object v0, v2, Lcom/mycompany/app/dialog/DialogGreeting;->k0:Landroid/view/View;

    .line 52
    .line 53
    iget v1, v2, Lcom/mycompany/app/dialog/DialogGreeting;->x0:I

    .line 54
    .line 55
    int-to-float v1, v1

    .line 56
    int-to-float v3, v3

    .line 57
    div-float/2addr v1, v3

    .line 58
    const/high16 v3, 0x3f800000    # 1.0f

    .line 59
    .line 60
    sub-float/2addr v3, v1

    .line 61
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 62
    .line 63
    .line 64
    iget-object v0, v2, Lcom/mycompany/app/dialog/DialogGreeting;->k0:Landroid/view/View;

    .line 65
    .line 66
    iget v1, v2, Lcom/mycompany/app/dialog/DialogGreeting;->x0:I

    .line 67
    .line 68
    int-to-float v1, v1

    .line 69
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 70
    .line 71
    .line 72
    :goto_2
    iput p1, v2, Lcom/mycompany/app/dialog/DialogGreeting;->w0:I

    .line 73
    .line 74
    return-void
.end method

.method public final d()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public final e()V
    .locals 0

    .line 1
    return-void
.end method

.method public final f(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final g(FFI)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public final h(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method
