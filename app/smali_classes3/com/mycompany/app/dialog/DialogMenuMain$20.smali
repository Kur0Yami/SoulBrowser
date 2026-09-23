.class Lcom/mycompany/app/dialog/DialogMenuMain$20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogMenuMain;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogMenuMain;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogMenuMain$20;->a:Lcom/mycompany/app/dialog/DialogMenuMain;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 3

    .line 1
    sget p1, Lcom/mycompany/app/dialog/DialogMenuMain;->G0:I

    .line 2
    .line 3
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogMenuMain$20;->a:Lcom/mycompany/app/dialog/DialogMenuMain;

    .line 4
    .line 5
    iget-object v0, p1, Lcom/mycompany/app/view/MyDialogBottom;->t:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 6
    .line 7
    if-eqz v0, :cond_5

    .line 8
    .line 9
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogMenuMain;->l0:Lcom/mycompany/app/view/MyDialogMenu;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    iget v0, p1, Lcom/mycompany/app/dialog/DialogMenuMain;->f0:I

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogMenuMain;->B()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/mycompany/app/view/MyDialogBottom;->show()V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    new-instance v0, Lcom/mycompany/app/view/MyBarView;

    .line 26
    .line 27
    iget-object v1, p1, Lcom/mycompany/app/dialog/DialogMenuMain;->b0:Landroid/content/Context;

    .line 28
    .line 29
    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p1, Lcom/mycompany/app/dialog/DialogMenuMain;->D0:Lcom/mycompany/app/view/MyBarView;

    .line 33
    .line 34
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 35
    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    const/high16 v1, -0x1000000

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    const v1, -0x70708

    .line 42
    .line 43
    .line 44
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogMenuMain;->D0:Lcom/mycompany/app/view/MyBarView;

    .line 48
    .line 49
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->l1()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyBarView;->setFilterColor(I)V

    .line 54
    .line 55
    .line 56
    :try_start_0
    new-instance v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 57
    .line 58
    sget v1, Lcom/mycompany/app/pref/PrefPdf;->y:I

    .line 59
    .line 60
    const/4 v2, -0x1

    .line 61
    invoke-direct {v0, v2, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;-><init>(II)V

    .line 62
    .line 63
    .line 64
    const/16 v1, 0x50

    .line 65
    .line 66
    iput v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->c:I

    .line 67
    .line 68
    iget-object v1, p1, Lcom/mycompany/app/view/MyDialogBottom;->t:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 69
    .line 70
    iget-object v2, p1, Lcom/mycompany/app/dialog/DialogMenuMain;->D0:Lcom/mycompany/app/view/MyBarView;

    .line 71
    .line 72
    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .line 74
    .line 75
    iget-object v0, p1, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 76
    .line 77
    if-nez v0, :cond_3

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_3
    new-instance v1, Lcom/mycompany/app/dialog/DialogMenuMain$21;

    .line 81
    .line 82
    invoke-direct {v1, p1}, Lcom/mycompany/app/dialog/DialogMenuMain$21;-><init>(Lcom/mycompany/app/dialog/DialogMenuMain;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 86
    .line 87
    .line 88
    return-void

    .line 89
    :catch_0
    iget-object v0, p1, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 90
    .line 91
    if-nez v0, :cond_4

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_4
    new-instance v1, Lcom/mycompany/app/dialog/DialogMenuMain$8;

    .line 95
    .line 96
    invoke-direct {v1, p1}, Lcom/mycompany/app/dialog/DialogMenuMain$8;-><init>(Lcom/mycompany/app/dialog/DialogMenuMain;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 100
    .line 101
    .line 102
    :cond_5
    :goto_1
    return-void
.end method
