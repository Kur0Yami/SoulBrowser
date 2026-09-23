.class Lcom/mycompany/app/dialog/DialogSetCookie$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogSetCookie;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetCookie;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetCookie$1;->c:Lcom/mycompany/app/dialog/DialogSetCookie;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetCookie$1;->c:Lcom/mycompany/app/dialog/DialogSetCookie;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetCookie;->b0:Landroid/content/Context;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v2, 0x1

    .line 9
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->q(Landroid/content/Context;I)Lcom/mycompany/app/view/MyDialogLinear;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    const/4 v4, 0x0

    .line 14
    invoke-static {v1, v2, v4}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->u(Landroid/content/Context;ZZ)Lcom/mycompany/app/view/MyRecyclerView;

    .line 15
    .line 16
    .line 17
    move-result-object v5

    .line 18
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 19
    .line 20
    const/4 v7, -0x1

    .line 21
    invoke-direct {v6, v7, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 22
    .line 23
    .line 24
    const/high16 v4, 0x3f800000    # 1.0f

    .line 25
    .line 26
    iput v4, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 27
    .line 28
    invoke-virtual {v3, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 29
    .line 30
    .line 31
    new-instance v4, Lcom/mycompany/app/view/MyLineText;

    .line 32
    .line 33
    invoke-direct {v4, v1}, Lcom/mycompany/app/view/MyLineText;-><init>(Landroid/content/Context;)V

    .line 34
    .line 35
    .line 36
    const/16 v1, 0x11

    .line 37
    .line 38
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 39
    .line 40
    .line 41
    const/high16 v1, 0x41800000    # 16.0f

    .line 42
    .line 43
    invoke-virtual {v4, v2, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 44
    .line 45
    .line 46
    sget v1, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 47
    .line 48
    invoke-virtual {v4, v1}, Lcom/mycompany/app/view/MyLineText;->setLinePad(I)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v4, v2}, Lcom/mycompany/app/view/MyLineText;->setLineUp(Z)V

    .line 52
    .line 53
    .line 54
    sget v1, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 55
    .line 56
    invoke-virtual {v3, v4, v7, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 57
    .line 58
    .line 59
    iput-object v3, v0, Lcom/mycompany/app/dialog/DialogSetCookie;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 60
    .line 61
    iput-object v5, v0, Lcom/mycompany/app/dialog/DialogSetCookie;->e0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 62
    .line 63
    iput-object v4, v0, Lcom/mycompany/app/dialog/DialogSetCookie;->f0:Lcom/mycompany/app/view/MyLineText;

    .line 64
    .line 65
    iget-object v1, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 66
    .line 67
    if-nez v1, :cond_1

    .line 68
    .line 69
    :goto_0
    return-void

    .line 70
    :cond_1
    new-instance v2, Lcom/mycompany/app/dialog/DialogSetCookie$2;

    .line 71
    .line 72
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSetCookie$2;-><init>(Lcom/mycompany/app/dialog/DialogSetCookie;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 76
    .line 77
    .line 78
    return-void
.end method
