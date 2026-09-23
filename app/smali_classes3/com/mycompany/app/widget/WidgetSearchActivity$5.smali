.class Lcom/mycompany/app/widget/WidgetSearchActivity$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyBarView$BarListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/widget/WidgetSearchActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/widget/WidgetSearchActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/widget/WidgetSearchActivity$5;->a:Lcom/mycompany/app/widget/WidgetSearchActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(ILandroid/view/View;Z)V
    .locals 7

    .line 1
    iget-object v1, p0, Lcom/mycompany/app/widget/WidgetSearchActivity$5;->a:Lcom/mycompany/app/widget/WidgetSearchActivity;

    .line 2
    .line 3
    const/4 p3, 0x1

    .line 4
    if-eqz p1, :cond_4

    .line 5
    .line 6
    if-eq p1, p3, :cond_1

    .line 7
    .line 8
    sget p2, Lcom/mycompany/app/widget/WidgetSearchActivity;->I1:I

    .line 9
    .line 10
    const/4 p2, 0x2

    .line 11
    if-eq p1, p2, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {v1}, Lcom/mycompany/app/widget/WidgetSearchActivity;->z0()V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    iget-boolean p1, v1, Lcom/mycompany/app/widget/WidgetSearchActivity;->H1:Z

    .line 19
    .line 20
    if-eqz p1, :cond_2

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_2
    iput-boolean p3, v1, Lcom/mycompany/app/widget/WidgetSearchActivity;->H1:Z

    .line 24
    .line 25
    iget-object p1, v1, Lcom/mycompany/app/widget/WidgetSearchActivity;->l1:Landroid/widget/FrameLayout;

    .line 26
    .line 27
    if-nez p1, :cond_3

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_3
    new-instance p2, Lcom/mycompany/app/widget/WidgetSearchActivity$25;

    .line 31
    .line 32
    invoke-direct {p2, v1}, Lcom/mycompany/app/widget/WidgetSearchActivity$25;-><init>(Lcom/mycompany/app/widget/WidgetSearchActivity;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_4
    iget-object p1, v1, Lcom/mycompany/app/widget/WidgetSearchActivity;->B1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 40
    .line 41
    if-eqz p1, :cond_5

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_5
    if-eqz p1, :cond_6

    .line 45
    .line 46
    const/4 v0, 0x0

    .line 47
    iput-object v0, v1, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 50
    .line 51
    .line 52
    iput-object v0, v1, Lcom/mycompany/app/widget/WidgetSearchActivity;->B1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 53
    .line 54
    :cond_6
    if-nez p2, :cond_7

    .line 55
    .line 56
    :goto_0
    return-void

    .line 57
    :cond_7
    new-instance v4, Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .line 61
    .line 62
    new-instance p1, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 63
    .line 64
    const/4 v0, 0x0

    .line 65
    const-string v2, "https://"

    .line 66
    .line 67
    invoke-direct {p1, v0, v2}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(ILjava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    new-instance p1, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 74
    .line 75
    const-string v0, "www."

    .line 76
    .line 77
    invoke-direct {p1, p3, v0}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(ILjava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    new-instance v0, Lcom/mycompany/app/view/MyPopupMenu;

    .line 84
    .line 85
    iget-object v2, v1, Lcom/mycompany/app/widget/WidgetSearchActivity;->l1:Landroid/widget/FrameLayout;

    .line 86
    .line 87
    sget-boolean v5, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 88
    .line 89
    new-instance v6, Lcom/mycompany/app/widget/WidgetSearchActivity$24;

    .line 90
    .line 91
    invoke-direct {v6, v1}, Lcom/mycompany/app/widget/WidgetSearchActivity$24;-><init>(Lcom/mycompany/app/widget/WidgetSearchActivity;)V

    .line 92
    .line 93
    .line 94
    move-object v3, p2

    .line 95
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/view/MyPopupMenu;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;ZLcom/mycompany/app/view/MyPopupMenu$MyPopupListener;)V

    .line 96
    .line 97
    .line 98
    iput-object v0, v1, Lcom/mycompany/app/widget/WidgetSearchActivity;->B1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 99
    .line 100
    iput-object v0, v1, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 101
    .line 102
    return-void
.end method
