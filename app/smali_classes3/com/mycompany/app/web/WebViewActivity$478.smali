.class Lcom/mycompany/app/web/WebViewActivity$478;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogDeleteItem$DelItemListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/web/WebViewActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$478;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$478;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->H3:Lcom/mycompany/app/dialog/DialogDeleteItem;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_3

    .line 8
    .line 9
    :cond_0
    iget v1, v0, Lcom/mycompany/app/web/WebViewActivity;->qm:I

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x1

    .line 13
    if-ne v1, v3, :cond_7

    .line 14
    .line 15
    iget v1, v0, Lcom/mycompany/app/web/WebViewActivity;->pm:I

    .line 16
    .line 17
    iget-object v4, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 18
    .line 19
    if-nez v4, :cond_1

    .line 20
    .line 21
    goto/16 :goto_2

    .line 22
    .line 23
    :cond_1
    invoke-virtual {v0, v1}, Lcom/mycompany/app/web/WebViewActivity;->n3(I)Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    if-nez v1, :cond_2

    .line 28
    .line 29
    goto :goto_2

    .line 30
    :cond_2
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->P4()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v3}, Lcom/mycompany/app/web/WebViewActivity;->t6(Z)V

    .line 34
    .line 35
    .line 36
    iget-object v4, v0, Lcom/mycompany/app/web/WebViewActivity;->f1:Ljava/lang/Object;

    .line 37
    .line 38
    monitor-enter v4

    .line 39
    :try_start_0
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->O2:Ljava/util/List;

    .line 40
    .line 41
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    if-eqz v5, :cond_6

    .line 50
    .line 51
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    check-cast v5, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 56
    .line 57
    if-nez v5, :cond_4

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_4
    iget-wide v6, v5, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->c:J

    .line 61
    .line 62
    iget-wide v8, v1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->c:J

    .line 63
    .line 64
    cmp-long v6, v6, v8

    .line 65
    .line 66
    if-nez v6, :cond_5

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_5
    iget-object v6, v5, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->p:Lcom/mycompany/app/web/WebNestFrame;

    .line 70
    .line 71
    if-eqz v6, :cond_3

    .line 72
    .line 73
    const/4 v7, 0x0

    .line 74
    invoke-virtual {v6, v7}, Lcom/mycompany/app/web/WebNestFrame;->t(Lcom/mycompany/app/web/WebNestView;)Z

    .line 75
    .line 76
    .line 77
    iput-object v7, v5, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->p:Lcom/mycompany/app/web/WebNestFrame;

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :catchall_0
    move-exception v0

    .line 81
    goto :goto_1

    .line 82
    :cond_6
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    iput-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Mf:Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 84
    .line 85
    new-instance v1, Lcom/mycompany/app/web/WebViewActivity$130;

    .line 86
    .line 87
    invoke-direct {v1, v0}, Lcom/mycompany/app/web/WebViewActivity$130;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v1}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 91
    .line 92
    .line 93
    move v2, v3

    .line 94
    goto :goto_2

    .line 95
    :goto_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    throw v0

    .line 97
    :cond_7
    const/4 v3, 0x2

    .line 98
    if-ne v1, v3, :cond_8

    .line 99
    .line 100
    iget v1, v0, Lcom/mycompany/app/web/WebViewActivity;->pm:I

    .line 101
    .line 102
    invoke-static {v0, v1}, Lcom/mycompany/app/web/WebViewActivity;->C0(Lcom/mycompany/app/web/WebViewActivity;I)Z

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    goto :goto_2

    .line 107
    :cond_8
    const/4 v3, 0x3

    .line 108
    if-ne v1, v3, :cond_9

    .line 109
    .line 110
    iget v1, v0, Lcom/mycompany/app/web/WebViewActivity;->om:I

    .line 111
    .line 112
    iget v2, v0, Lcom/mycompany/app/web/WebViewActivity;->pm:I

    .line 113
    .line 114
    invoke-static {v0, v1, v2}, Lcom/mycompany/app/web/WebViewActivity;->B0(Lcom/mycompany/app/web/WebViewActivity;II)Z

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    goto :goto_2

    .line 119
    :cond_9
    invoke-virtual {v0, v2}, Lcom/mycompany/app/web/WebViewActivity;->x2(Z)Z

    .line 120
    .line 121
    .line 122
    move-result v2

    .line 123
    :goto_2
    if-eqz v2, :cond_a

    .line 124
    .line 125
    goto :goto_3

    .line 126
    :cond_a
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$478;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 127
    .line 128
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 129
    .line 130
    if-nez v0, :cond_b

    .line 131
    .line 132
    :goto_3
    return-void

    .line 133
    :cond_b
    new-instance v1, Lcom/mycompany/app/web/WebViewActivity$478$1;

    .line 134
    .line 135
    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebViewActivity$478$1;-><init>(Lcom/mycompany/app/web/WebViewActivity$478;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 139
    .line 140
    .line 141
    return-void
.end method

.method public final b(Lcom/mycompany/app/view/MyRoundImage;Landroidx/appcompat/widget/AppCompatTextView;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$478;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget v1, v0, Lcom/mycompany/app/web/WebViewActivity;->nm:I

    .line 4
    .line 5
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->H3:Lcom/mycompany/app/dialog/DialogDeleteItem;

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v3, " "

    .line 19
    .line 20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 24
    .line 25
    const/4 v3, 0x1

    .line 26
    if-le v1, v3, :cond_1

    .line 27
    .line 28
    sget v1, Lnet/kaki87/soul2/testing/R$string;->tab_items:I

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    sget v1, Lnet/kaki87/soul2/testing/R$string;->tab_item:I

    .line 32
    .line 33
    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const v0, -0x70708

    .line 41
    .line 42
    .line 43
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_public_black_24:I

    .line 44
    .line 45
    invoke-virtual {p1, v0, v1}, Lcom/mycompany/app/view/MyRoundImage;->o(II)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method
