.class Lcom/mycompany/app/web/WebViewActivity$480;
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
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$480;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$480;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget v1, v0, Lcom/mycompany/app/web/WebViewActivity;->sm:I

    .line 4
    .line 5
    iget-wide v2, v0, Lcom/mycompany/app/web/WebViewActivity;->tm:J

    .line 6
    .line 7
    iget-object v4, v0, Lcom/mycompany/app/web/WebViewActivity;->I3:Lcom/mycompany/app/dialog/DialogDeleteItem;

    .line 8
    .line 9
    if-nez v4, :cond_0

    .line 10
    .line 11
    goto :goto_5

    .line 12
    :cond_0
    iget-object v4, v0, Lcom/mycompany/app/web/WebViewActivity;->O2:Ljava/util/List;

    .line 13
    .line 14
    if-nez v4, :cond_1

    .line 15
    .line 16
    goto :goto_4

    .line 17
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    if-lt v1, v4, :cond_2

    .line 22
    .line 23
    goto :goto_4

    .line 24
    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .line 28
    .line 29
    iget-object v6, v0, Lcom/mycompany/app/web/WebViewActivity;->f1:Ljava/lang/Object;

    .line 30
    .line 31
    monitor-enter v6

    .line 32
    move v7, v1

    .line 33
    :goto_0
    if-ge v7, v4, :cond_6

    .line 34
    .line 35
    :try_start_0
    iget-object v8, v0, Lcom/mycompany/app/web/WebViewActivity;->O2:Ljava/util/List;

    .line 36
    .line 37
    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v8

    .line 41
    check-cast v8, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 42
    .line 43
    if-nez v8, :cond_3

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_3
    iget-wide v9, v8, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->e:J

    .line 47
    .line 48
    cmp-long v9, v9, v2

    .line 49
    .line 50
    if-eqz v9, :cond_4

    .line 51
    .line 52
    goto :goto_3

    .line 53
    :cond_4
    iget-object v9, v8, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->p:Lcom/mycompany/app/web/WebNestFrame;

    .line 54
    .line 55
    if-eqz v9, :cond_5

    .line 56
    .line 57
    const/4 v10, 0x0

    .line 58
    invoke-virtual {v9, v10}, Lcom/mycompany/app/web/WebNestFrame;->t(Lcom/mycompany/app/web/WebNestView;)Z

    .line 59
    .line 60
    .line 61
    iput-object v10, v8, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->p:Lcom/mycompany/app/web/WebNestFrame;

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :catchall_0
    move-exception v0

    .line 65
    goto :goto_6

    .line 66
    :cond_5
    :goto_1
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    :goto_2
    add-int/lit8 v7, v7, 0x1

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_6
    :goto_3
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    if-eqz v2, :cond_8

    .line 78
    .line 79
    :goto_4
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$480;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 80
    .line 81
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 82
    .line 83
    if-nez v0, :cond_7

    .line 84
    .line 85
    :goto_5
    return-void

    .line 86
    :cond_7
    new-instance v1, Lcom/mycompany/app/web/WebViewActivity$480$1;

    .line 87
    .line 88
    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebViewActivity$480$1;-><init>(Lcom/mycompany/app/web/WebViewActivity$480;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 92
    .line 93
    .line 94
    return-void

    .line 95
    :cond_8
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$129;

    .line 96
    .line 97
    invoke-direct {v2, v0, v5, v1}, Lcom/mycompany/app/web/WebViewActivity$129;-><init>(Lcom/mycompany/app/web/WebViewActivity;Ljava/util/ArrayList;I)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, v2}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 101
    .line 102
    .line 103
    return-void

    .line 104
    :goto_6
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    throw v0
.end method

.method public final b(Lcom/mycompany/app/view/MyRoundImage;Landroidx/appcompat/widget/AppCompatTextView;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$480;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->rm:Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->I3:Lcom/mycompany/app/dialog/DialogDeleteItem;

    .line 9
    .line 10
    if-nez v2, :cond_1

    .line 11
    .line 12
    :goto_0
    return-void

    .line 13
    :cond_1
    iget-object v2, v1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->f:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-eqz v3, :cond_2

    .line 20
    .line 21
    sget v2, Lnet/kaki87/soul2/testing/R$string;->group_title:I

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    :cond_2
    iget v0, v1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->g:I

    .line 28
    .line 29
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 30
    .line 31
    invoke-static {v0, v1}, Lcom/mycompany/app/web/WebTabBarAdapter;->y(IZ)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    const/4 v1, 0x0

    .line 36
    invoke-virtual {p1, v1, v0}, Lcom/mycompany/app/view/MyRoundImage;->o(II)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method
