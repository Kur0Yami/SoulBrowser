.class Lcom/mycompany/app/quick/QuickAdd$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/quick/QuickAdd;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/quick/QuickAdd;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/quick/QuickAdd$5;->c:Lcom/mycompany/app/quick/QuickAdd;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    .line 1
    iget-object v1, p0, Lcom/mycompany/app/quick/QuickAdd$5;->c:Lcom/mycompany/app/quick/QuickAdd;

    .line 2
    .line 3
    iget-object v0, v1, Lcom/mycompany/app/quick/QuickAdd;->G2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v2, 0x0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iput-object v2, v1, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 14
    .line 15
    .line 16
    iput-object v2, v1, Lcom/mycompany/app/quick/QuickAdd;->G2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 17
    .line 18
    :cond_1
    if-nez p1, :cond_2

    .line 19
    .line 20
    :goto_0
    return-void

    .line 21
    :cond_2
    iput-object v2, v1, Lcom/mycompany/app/quick/QuickAdd;->H2:Landroid/net/Uri;

    .line 22
    .line 23
    iput-object v2, v1, Lcom/mycompany/app/quick/QuickAdd;->I2:Ljava/lang/String;

    .line 24
    .line 25
    new-instance v4, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .line 29
    .line 30
    new-instance v0, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 31
    .line 32
    const/4 v2, 0x0

    .line 33
    sget v3, Lnet/kaki87/soul2/testing/R$string;->web_title:I

    .line 34
    .line 35
    invoke-direct {v0, v2, v3}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    new-instance v0, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 42
    .line 43
    const/4 v2, 0x1

    .line 44
    sget v3, Lnet/kaki87/soul2/testing/R$string;->image:I

    .line 45
    .line 46
    invoke-direct {v0, v2, v3}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    new-instance v0, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 53
    .line 54
    const/4 v2, 0x2

    .line 55
    sget v3, Lnet/kaki87/soul2/testing/R$string;->camera:I

    .line 56
    .line 57
    invoke-direct {v0, v2, v3}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    new-instance v0, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 64
    .line 65
    const/4 v2, 0x3

    .line 66
    sget v3, Lnet/kaki87/soul2/testing/R$string;->color_title:I

    .line 67
    .line 68
    invoke-direct {v0, v2, v3}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    new-instance v0, Lcom/mycompany/app/view/MyPopupMenu;

    .line 75
    .line 76
    iget-object v2, v1, Lcom/mycompany/app/setting/SettingActivity;->E1:Lcom/mycompany/app/view/MyMainRelative;

    .line 77
    .line 78
    sget-boolean v5, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 79
    .line 80
    new-instance v6, Lcom/mycompany/app/quick/QuickAdd$27;

    .line 81
    .line 82
    invoke-direct {v6, v1}, Lcom/mycompany/app/quick/QuickAdd$27;-><init>(Lcom/mycompany/app/quick/QuickAdd;)V

    .line 83
    .line 84
    .line 85
    move-object v3, p1

    .line 86
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/view/MyPopupMenu;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;ZLcom/mycompany/app/view/MyPopupMenu$MyPopupListener;)V

    .line 87
    .line 88
    .line 89
    iput-object v0, v1, Lcom/mycompany/app/quick/QuickAdd;->G2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 90
    .line 91
    iput-object v0, v1, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 92
    .line 93
    return-void
.end method
