.class Lcom/mycompany/app/dialog/DialogUrlLink$32;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogUrlLink;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogUrlLink;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogUrlLink$32;->c:Lcom/mycompany/app/dialog/DialogUrlLink;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogUrlLink$32;->c:Lcom/mycompany/app/dialog/DialogUrlLink;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->H0:Lcom/mycompany/app/view/MyLinkView;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_3

    .line 8
    .line 9
    :cond_0
    const/4 v2, 0x4

    .line 10
    invoke-virtual {v0, v2}, Lcom/mycompany/app/dialog/DialogUrlLink;->J(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-eqz v3, :cond_1

    .line 19
    .line 20
    goto :goto_3

    .line 21
    :cond_1
    iget-object v3, v1, Lcom/mycompany/app/view/MyLinkView;->L:Ljava/util/List;

    .line 22
    .line 23
    const/4 v4, 0x0

    .line 24
    const/4 v5, -0x1

    .line 25
    if-nez v3, :cond_2

    .line 26
    .line 27
    goto :goto_2

    .line 28
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

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
    move v6, v4

    .line 36
    :goto_0
    if-ge v6, v3, :cond_6

    .line 37
    .line 38
    iget-object v7, v1, Lcom/mycompany/app/view/MyLinkView;->L:Ljava/util/List;

    .line 39
    .line 40
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v7

    .line 44
    check-cast v7, Lcom/mycompany/app/view/MyLinkView$MainLinkItem;

    .line 45
    .line 46
    if-nez v7, :cond_4

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_4
    iget v7, v7, Lcom/mycompany/app/view/MyLinkView$MainLinkItem;->a:I

    .line 50
    .line 51
    if-ne v7, v2, :cond_5

    .line 52
    .line 53
    move v5, v6

    .line 54
    goto :goto_2

    .line 55
    :cond_5
    :goto_1
    add-int/lit8 v6, v6, 0x1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_6
    :goto_2
    invoke-virtual {v1, v5}, Lcom/mycompany/app/view/MyLinkView;->y(I)Lcom/mycompany/app/view/MyLinkView$MainLinkItem;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    if-eqz v3, :cond_a

    .line 63
    .line 64
    iget v6, v3, Lcom/mycompany/app/view/MyLinkView$MainLinkItem;->a:I

    .line 65
    .line 66
    if-eq v6, v2, :cond_7

    .line 67
    .line 68
    goto :goto_3

    .line 69
    :cond_7
    iput-object v0, v3, Lcom/mycompany/app/view/MyLinkView$MainLinkItem;->d:Ljava/lang/String;

    .line 70
    .line 71
    iput v4, v3, Lcom/mycompany/app/view/MyLinkView$MainLinkItem;->c:I

    .line 72
    .line 73
    iget-object v0, v1, Lcom/mycompany/app/view/MyLinkView;->P:Ljava/util/ArrayList;

    .line 74
    .line 75
    if-eqz v0, :cond_a

    .line 76
    .line 77
    if-ltz v5, :cond_a

    .line 78
    .line 79
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-lt v5, v0, :cond_8

    .line 84
    .line 85
    goto :goto_3

    .line 86
    :cond_8
    iget-object v0, v1, Lcom/mycompany/app/view/MyLinkView;->P:Ljava/util/ArrayList;

    .line 87
    .line 88
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    check-cast v0, Landroid/widget/TextView;

    .line 93
    .line 94
    if-nez v0, :cond_9

    .line 95
    .line 96
    goto :goto_3

    .line 97
    :cond_9
    iget-object v1, v3, Lcom/mycompany/app/view/MyLinkView$MainLinkItem;->d:Ljava/lang/String;

    .line 98
    .line 99
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    .line 101
    .line 102
    :cond_a
    :goto_3
    return-void
.end method
