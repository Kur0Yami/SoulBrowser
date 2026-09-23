.class Lcom/mycompany/app/main/MainListView$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/MainListView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainListView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainListView$8;->c:Lcom/mycompany/app/main/MainListView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView$8;->c:Lcom/mycompany/app/main/MainListView;

    .line 2
    .line 3
    iget v1, v0, Lcom/mycompany/app/main/MainListView;->d:I

    .line 4
    .line 5
    const/16 v2, 0x13

    .line 6
    .line 7
    const/16 v3, 0x19

    .line 8
    .line 9
    if-eq v1, v2, :cond_4

    .line 10
    .line 11
    const/16 v2, 0x14

    .line 12
    .line 13
    if-eq v1, v2, :cond_4

    .line 14
    .line 15
    const/16 v2, 0x15

    .line 16
    .line 17
    if-eq v1, v2, :cond_4

    .line 18
    .line 19
    const/16 v2, 0x16

    .line 20
    .line 21
    if-eq v1, v2, :cond_4

    .line 22
    .line 23
    const/16 v2, 0x17

    .line 24
    .line 25
    if-eq v1, v2, :cond_4

    .line 26
    .line 27
    if-eq v1, v3, :cond_4

    .line 28
    .line 29
    const/16 v2, 0x1b

    .line 30
    .line 31
    if-eq v1, v2, :cond_4

    .line 32
    .line 33
    const/16 v2, 0x1c

    .line 34
    .line 35
    if-eq v1, v2, :cond_4

    .line 36
    .line 37
    const/16 v2, 0x1d

    .line 38
    .line 39
    if-eq v1, v2, :cond_4

    .line 40
    .line 41
    const/16 v2, 0x1e

    .line 42
    .line 43
    if-ne v1, v2, :cond_0

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_0
    const/16 p1, 0x1a

    .line 47
    .line 48
    const/4 v2, 0x0

    .line 49
    if-ne v1, p1, :cond_1

    .line 50
    .line 51
    invoke-static {v0, v2}, Lcom/mycompany/app/main/MainListView;->e(Lcom/mycompany/app/main/MainListView;Lcom/mycompany/app/main/MainItem$ChildItem;)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_1
    const/16 p1, 0x18

    .line 56
    .line 57
    if-eq v1, p1, :cond_3

    .line 58
    .line 59
    const/16 p1, 0x24

    .line 60
    .line 61
    if-ne v1, p1, :cond_2

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    iget-object p1, v0, Lcom/mycompany/app/main/MainListView;->o:Lcom/mycompany/app/main/MainListListener;

    .line 65
    .line 66
    if-eqz p1, :cond_6

    .line 67
    .line 68
    invoke-virtual {p1}, Lcom/mycompany/app/main/MainListListener;->a()V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :cond_3
    :goto_0
    invoke-static {v0, v2}, Lcom/mycompany/app/main/MainListView;->g(Lcom/mycompany/app/main/MainListView;Lcom/mycompany/app/main/MainItem$ChildItem;)V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :cond_4
    :goto_1
    if-ne v1, v3, :cond_5

    .line 77
    .line 78
    sget-boolean v1, Lcom/mycompany/app/pref/PrefAlbum;->r:Z

    .line 79
    .line 80
    if-eqz v1, :cond_5

    .line 81
    .line 82
    const/4 v1, 0x0

    .line 83
    sput-boolean v1, Lcom/mycompany/app/pref/PrefAlbum;->r:Z

    .line 84
    .line 85
    iget-object v2, v0, Lcom/mycompany/app/main/MainListView;->b:Landroid/content/Context;

    .line 86
    .line 87
    const-string v3, "mFilterNoti2"

    .line 88
    .line 89
    invoke-static {v1, v2, v3, v1}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 90
    .line 91
    .line 92
    iget-object v2, v0, Lcom/mycompany/app/main/MainListView;->D:Lcom/mycompany/app/view/MyButtonImage;

    .line 93
    .line 94
    if-eqz v2, :cond_5

    .line 95
    .line 96
    invoke-virtual {v2, v1}, Lcom/mycompany/app/view/MyButtonImage;->setNoti(Z)V

    .line 97
    .line 98
    .line 99
    :cond_5
    iget-object v0, v0, Lcom/mycompany/app/main/MainListView;->o:Lcom/mycompany/app/main/MainListListener;

    .line 100
    .line 101
    if-eqz v0, :cond_6

    .line 102
    .line 103
    invoke-virtual {v0, p1}, Lcom/mycompany/app/main/MainListListener;->m(Landroid/view/View;)V

    .line 104
    .line 105
    .line 106
    :cond_6
    return-void
.end method
