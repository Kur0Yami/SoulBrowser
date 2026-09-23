.class Lcom/mycompany/app/quick/QuickSearch$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/quick/QuickSearch;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/quick/QuickSearch;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/quick/QuickSearch$3;->c:Lcom/mycompany/app/quick/QuickSearch;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickSearch$3;->c:Lcom/mycompany/app/quick/QuickSearch;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickSearch;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_2

    .line 8
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickSearch;->W:Lcom/mycompany/app/view/MyPopupMenu;

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    goto :goto_2

    .line 13
    :cond_1
    invoke-virtual {v0}, Lcom/mycompany/app/quick/QuickSearch;->i()V

    .line 14
    .line 15
    .line 16
    if-nez p1, :cond_2

    .line 17
    .line 18
    goto :goto_2

    .line 19
    :cond_2
    new-instance v6, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .line 23
    .line 24
    new-instance v1, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 25
    .line 26
    sget v2, Lnet/kaki87/soul2/testing/R$string;->quick_access:I

    .line 27
    .line 28
    sget v3, Lcom/mycompany/app/pref/PrefZtri;->j0:I

    .line 29
    .line 30
    const/4 v4, 0x0

    .line 31
    const/4 v5, 0x1

    .line 32
    if-ne v3, v5, :cond_3

    .line 33
    .line 34
    move v3, v5

    .line 35
    goto :goto_0

    .line 36
    :cond_3
    move v3, v4

    .line 37
    :goto_0
    invoke-direct {v1, v4, v2, v3}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(IIZ)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    new-instance v1, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 44
    .line 45
    sget v2, Lnet/kaki87/soul2/testing/R$string;->recent_search:I

    .line 46
    .line 47
    sget v3, Lcom/mycompany/app/pref/PrefZtri;->j0:I

    .line 48
    .line 49
    const/4 v7, 0x2

    .line 50
    if-ne v3, v7, :cond_4

    .line 51
    .line 52
    move v3, v5

    .line 53
    goto :goto_1

    .line 54
    :cond_4
    move v3, v4

    .line 55
    :goto_1
    invoke-direct {v1, v5, v2, v3}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(IIZ)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    new-instance v1, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 62
    .line 63
    sget v2, Lnet/kaki87/soul2/testing/R$string;->not_used:I

    .line 64
    .line 65
    sget v3, Lcom/mycompany/app/pref/PrefZtri;->j0:I

    .line 66
    .line 67
    if-nez v3, :cond_5

    .line 68
    .line 69
    move v4, v5

    .line 70
    :cond_5
    invoke-direct {v1, v7, v2, v4}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(IIZ)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    new-instance v2, Lcom/mycompany/app/view/MyPopupMenu;

    .line 77
    .line 78
    iget-object v3, v0, Lcom/mycompany/app/quick/QuickSearch;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 79
    .line 80
    iget-object v4, v0, Lcom/mycompany/app/quick/QuickSearch;->w:Landroid/widget/LinearLayout;

    .line 81
    .line 82
    iget-boolean v1, v0, Lcom/mycompany/app/quick/QuickSearch;->i:Z

    .line 83
    .line 84
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->k5(Z)Z

    .line 85
    .line 86
    .line 87
    move-result v7

    .line 88
    new-instance v8, Lcom/mycompany/app/quick/QuickSearch$18;

    .line 89
    .line 90
    invoke-direct {v8, v0}, Lcom/mycompany/app/quick/QuickSearch$18;-><init>(Lcom/mycompany/app/quick/QuickSearch;)V

    .line 91
    .line 92
    .line 93
    move-object v5, p1

    .line 94
    invoke-direct/range {v2 .. v8}, Lcom/mycompany/app/view/MyPopupMenu;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;ZLcom/mycompany/app/view/MyPopupMenu$MyPopupListener;)V

    .line 95
    .line 96
    .line 97
    iput-object v2, v0, Lcom/mycompany/app/quick/QuickSearch;->W:Lcom/mycompany/app/view/MyPopupMenu;

    .line 98
    .line 99
    iget-object p1, v0, Lcom/mycompany/app/quick/QuickSearch;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 100
    .line 101
    if-eqz p1, :cond_6

    .line 102
    .line 103
    iput-object v2, p1, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 104
    .line 105
    :cond_6
    :goto_2
    return-void
.end method
