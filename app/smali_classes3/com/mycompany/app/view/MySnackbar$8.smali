.class Lcom/mycompany/app/view/MySnackbar$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/view/MySnackbar;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/view/MySnackbar;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/view/MySnackbar$8;->c:Lcom/mycompany/app/view/MySnackbar;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MySnackbar$8;->c:Lcom/mycompany/app/view/MySnackbar;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/view/MySnackbar;->s:Landroid/view/ViewGroup;

    .line 4
    .line 5
    if-eqz v1, :cond_3

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/view/MySnackbar;->C:Landroid/widget/LinearLayout;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    :try_start_0
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    const/4 v3, -0x2

    .line 16
    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 17
    .line 18
    .line 19
    const/high16 v2, 0x3f800000    # 1.0f

    .line 20
    .line 21
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 22
    .line 23
    iget-object v2, v0, Lcom/mycompany/app/view/MySnackbar;->C:Landroid/widget/LinearLayout;

    .line 24
    .line 25
    iget-object v3, v0, Lcom/mycompany/app/view/MySnackbar;->y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 26
    .line 27
    invoke-virtual {v2, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 28
    .line 29
    .line 30
    iget-object v1, v0, Lcom/mycompany/app/view/MySnackbar;->A:Lcom/mycompany/app/view/MyButtonImage;

    .line 31
    .line 32
    const v2, 0x800013

    .line 33
    .line 34
    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 38
    .line 39
    sget v3, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 40
    .line 41
    invoke-direct {v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 42
    .line 43
    .line 44
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 45
    .line 46
    iget-object v3, v0, Lcom/mycompany/app/view/MySnackbar;->C:Landroid/widget/LinearLayout;

    .line 47
    .line 48
    iget-object v4, v0, Lcom/mycompany/app/view/MySnackbar;->A:Lcom/mycompany/app/view/MyButtonImage;

    .line 49
    .line 50
    invoke-virtual {v3, v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    .line 52
    .line 53
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/view/MySnackbar;->B:Lcom/mycompany/app/view/MyButtonImage;

    .line 54
    .line 55
    if-eqz v1, :cond_2

    .line 56
    .line 57
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 58
    .line 59
    sget v3, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 60
    .line 61
    invoke-direct {v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 62
    .line 63
    .line 64
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 65
    .line 66
    iget-object v2, v0, Lcom/mycompany/app/view/MySnackbar;->C:Landroid/widget/LinearLayout;

    .line 67
    .line 68
    iget-object v3, v0, Lcom/mycompany/app/view/MySnackbar;->B:Lcom/mycompany/app/view/MyButtonImage;

    .line 69
    .line 70
    invoke-virtual {v2, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    .line 72
    .line 73
    :cond_2
    iget-object v1, v0, Lcom/mycompany/app/view/MySnackbar;->s:Landroid/view/ViewGroup;

    .line 74
    .line 75
    new-instance v2, Lcom/mycompany/app/view/MySnackbar$9;

    .line 76
    .line 77
    invoke-direct {v2, v0}, Lcom/mycompany/app/view/MySnackbar$9;-><init>(Lcom/mycompany/app/view/MySnackbar;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .line 82
    .line 83
    :catch_0
    :cond_3
    :goto_0
    return-void
.end method
