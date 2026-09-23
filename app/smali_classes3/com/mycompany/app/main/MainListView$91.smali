.class Lcom/mycompany/app/main/MainListView$91;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogFileRename$FileRenameListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/main/MainListView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainListView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainListView$91;->a:Lcom/mycompany/app/main/MainListView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;J)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView$91;->a:Lcom/mycompany/app/main/MainListView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, -0x1

    .line 5
    const/4 v3, 0x1

    .line 6
    invoke-virtual {v0, v1, v2, v1, v3}, Lcom/mycompany/app/main/MainListView;->d0(ZIZZ)V

    .line 7
    .line 8
    .line 9
    iput-boolean v3, v0, Lcom/mycompany/app/main/MainListView;->B0:Z

    .line 10
    .line 11
    iget-boolean v2, v0, Lcom/mycompany/app/main/MainListView;->c1:Z

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0, v3, v1}, Lcom/mycompany/app/main/MainListView;->S(ZZ)V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget v2, v0, Lcom/mycompany/app/main/MainListView;->d:I

    .line 19
    .line 20
    const/16 v4, 0x20

    .line 21
    .line 22
    if-ne v2, v4, :cond_5

    .line 23
    .line 24
    iget-object p2, v0, Lcom/mycompany/app/main/MainListView;->A:Landroidx/appcompat/widget/AppCompatTextView;

    .line 25
    .line 26
    if-nez p2, :cond_1

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    sget-object p2, Lcom/mycompany/app/main/MainConst;->k0:[I

    .line 30
    .line 31
    aget p2, p2, v1

    .line 32
    .line 33
    sget v2, Lcom/mycompany/app/pref/PrefList;->Z0:I

    .line 34
    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    if-eq v2, p1, :cond_3

    .line 38
    .line 39
    :cond_2
    move p1, v1

    .line 40
    move v1, p2

    .line 41
    :cond_3
    if-eq v2, p1, :cond_4

    .line 42
    .line 43
    sput p1, Lcom/mycompany/app/pref/PrefList;->Z0:I

    .line 44
    .line 45
    iget-object p2, v0, Lcom/mycompany/app/main/MainListView;->b:Landroid/content/Context;

    .line 46
    .line 47
    const/4 v2, 0x4

    .line 48
    const-string v4, "mBookDownType"

    .line 49
    .line 50
    invoke-static {p2, v2, p1, v4}, Lcom/mycompany/app/pref/PrefSet;->f(Landroid/content/Context;IILjava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget-object p1, v0, Lcom/mycompany/app/main/MainListView;->A:Landroidx/appcompat/widget/AppCompatTextView;

    .line 54
    .line 55
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 56
    .line 57
    .line 58
    :cond_4
    invoke-virtual {v0, p3, p4, v3}, Lcom/mycompany/app/main/MainListView;->L(JZ)V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :cond_5
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    if-nez p1, :cond_6

    .line 67
    .line 68
    new-instance p1, Ljava/util/ArrayList;

    .line 69
    .line 70
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_6
    const/4 p1, 0x0

    .line 78
    :goto_0
    iget-object p2, v0, Lcom/mycompany/app/main/MainListView;->g0:Lcom/mycompany/app/list/ListTask;

    .line 79
    .line 80
    if-nez p2, :cond_7

    .line 81
    .line 82
    :goto_1
    return-void

    .line 83
    :cond_7
    if-eqz p1, :cond_8

    .line 84
    .line 85
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 86
    .line 87
    .line 88
    move-result p2

    .line 89
    if-nez p2, :cond_8

    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_8
    move v3, v1

    .line 93
    :goto_2
    iput-boolean v3, v0, Lcom/mycompany/app/main/MainListView;->m0:Z

    .line 94
    .line 95
    iget-object p2, v0, Lcom/mycompany/app/main/MainListView;->g0:Lcom/mycompany/app/list/ListTask;

    .line 96
    .line 97
    invoke-virtual {p2, p1, v1}, Lcom/mycompany/app/list/ListTask;->h(Ljava/util/List;Z)V

    .line 98
    .line 99
    .line 100
    return-void
.end method
