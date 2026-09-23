.class Lcom/mycompany/app/dialog/DialogNewsLocale$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyDialogBottom$BotListListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogNewsLocale;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogNewsLocale;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogNewsLocale$7;->a:Lcom/mycompany/app/dialog/DialogNewsLocale;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogNewsLocale$7;->a:Lcom/mycompany/app/dialog/DialogNewsLocale;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogNewsLocale;->p0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    if-eqz p1, :cond_1

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyRecyclerView;->w0()V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_1
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyRecyclerView;->r0()V

    .line 15
    .line 16
    .line 17
    :goto_0
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogNewsLocale;->p0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 18
    .line 19
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    iget v1, v0, Lcom/mycompany/app/dialog/DialogNewsLocale;->B0:I

    .line 24
    .line 25
    iget-boolean v2, v0, Lcom/mycompany/app/dialog/DialogNewsLocale;->C0:Z

    .line 26
    .line 27
    if-nez v2, :cond_2

    .line 28
    .line 29
    goto :goto_2

    .line 30
    :cond_2
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogNewsLocale;->o0:Landroid/view/View;

    .line 31
    .line 32
    if-nez v2, :cond_3

    .line 33
    .line 34
    goto :goto_2

    .line 35
    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_4

    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_4
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogNewsLocale;->o0:Landroid/view/View;

    .line 43
    .line 44
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-nez v2, :cond_5

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_5
    iget v3, v0, Lcom/mycompany/app/dialog/DialogNewsLocale;->A0:I

    .line 52
    .line 53
    sub-int v1, p1, v1

    .line 54
    .line 55
    add-int/2addr v1, v3

    .line 56
    iput v1, v0, Lcom/mycompany/app/dialog/DialogNewsLocale;->A0:I

    .line 57
    .line 58
    if-le v1, v2, :cond_6

    .line 59
    .line 60
    iput v2, v0, Lcom/mycompany/app/dialog/DialogNewsLocale;->A0:I

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_6
    if-gez v1, :cond_7

    .line 64
    .line 65
    const/4 v1, 0x0

    .line 66
    iput v1, v0, Lcom/mycompany/app/dialog/DialogNewsLocale;->A0:I

    .line 67
    .line 68
    :cond_7
    :goto_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogNewsLocale;->o0:Landroid/view/View;

    .line 69
    .line 70
    iget v3, v0, Lcom/mycompany/app/dialog/DialogNewsLocale;->A0:I

    .line 71
    .line 72
    int-to-float v3, v3

    .line 73
    int-to-float v2, v2

    .line 74
    div-float/2addr v3, v2

    .line 75
    const/high16 v2, 0x3f800000    # 1.0f

    .line 76
    .line 77
    sub-float/2addr v2, v3

    .line 78
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 79
    .line 80
    .line 81
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogNewsLocale;->o0:Landroid/view/View;

    .line 82
    .line 83
    iget v2, v0, Lcom/mycompany/app/dialog/DialogNewsLocale;->A0:I

    .line 84
    .line 85
    int-to-float v2, v2

    .line 86
    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 87
    .line 88
    .line 89
    :goto_2
    iput p1, v0, Lcom/mycompany/app/dialog/DialogNewsLocale;->B0:I

    .line 90
    .line 91
    const/4 p1, 0x1

    .line 92
    iput-boolean p1, v0, Lcom/mycompany/app/dialog/DialogNewsLocale;->C0:Z

    .line 93
    .line 94
    return-void
.end method
