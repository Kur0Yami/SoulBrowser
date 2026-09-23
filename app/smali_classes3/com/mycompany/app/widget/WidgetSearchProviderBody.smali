.class public Lcom/mycompany/app/widget/WidgetSearchProviderBody;
.super Landroid/appwidget/AppWidgetProvider;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:Landroid/content/Context;

.field public c:Landroid/appwidget/AppWidgetManager;

.field public d:[I

.field public e:I

.field public f:Landroid/content/Context;


# direct methods
.method public static a(Lcom/mycompany/app/widget/WidgetSearchProviderBody;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget v1, p0, Lcom/mycompany/app/widget/WidgetSearchProviderBody;->e:I

    .line 3
    .line 4
    const/16 v2, -0x4d2

    .line 5
    .line 6
    if-gez v1, :cond_1

    .line 7
    .line 8
    :cond_0
    :goto_0
    move v1, v2

    .line 9
    goto :goto_1

    .line 10
    :cond_1
    iget-object v3, p0, Lcom/mycompany/app/widget/WidgetSearchProviderBody;->d:[I

    .line 11
    .line 12
    if-eqz v3, :cond_0

    .line 13
    .line 14
    array-length v4, v3

    .line 15
    if-lt v1, v4, :cond_2

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_2
    aget v1, v3, v1

    .line 19
    .line 20
    :goto_1
    if-ne v1, v2, :cond_3

    .line 21
    .line 22
    iput-object v0, p0, Lcom/mycompany/app/widget/WidgetSearchProviderBody;->b:Landroid/content/Context;

    .line 23
    .line 24
    iput-object v0, p0, Lcom/mycompany/app/widget/WidgetSearchProviderBody;->c:Landroid/appwidget/AppWidgetManager;

    .line 25
    .line 26
    iput-object v0, p0, Lcom/mycompany/app/widget/WidgetSearchProviderBody;->d:[I

    .line 27
    .line 28
    return-void

    .line 29
    :cond_3
    iget-object v3, p0, Lcom/mycompany/app/widget/WidgetSearchProviderBody;->b:Landroid/content/Context;

    .line 30
    .line 31
    iget-object v4, p0, Lcom/mycompany/app/widget/WidgetSearchProviderBody;->c:Landroid/appwidget/AppWidgetManager;

    .line 32
    .line 33
    invoke-virtual {p0, v3, v4, v1}, Lcom/mycompany/app/widget/WidgetSearchProviderBody;->c(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;I)V

    .line 34
    .line 35
    .line 36
    iget v1, p0, Lcom/mycompany/app/widget/WidgetSearchProviderBody;->e:I

    .line 37
    .line 38
    add-int/lit8 v1, v1, 0x1

    .line 39
    .line 40
    iput v1, p0, Lcom/mycompany/app/widget/WidgetSearchProviderBody;->e:I

    .line 41
    .line 42
    if-gez v1, :cond_5

    .line 43
    .line 44
    :cond_4
    :goto_2
    move v1, v2

    .line 45
    goto :goto_3

    .line 46
    :cond_5
    iget-object v3, p0, Lcom/mycompany/app/widget/WidgetSearchProviderBody;->d:[I

    .line 47
    .line 48
    if-eqz v3, :cond_4

    .line 49
    .line 50
    array-length v4, v3

    .line 51
    if-lt v1, v4, :cond_6

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_6
    aget v1, v3, v1

    .line 55
    .line 56
    :goto_3
    if-ne v1, v2, :cond_7

    .line 57
    .line 58
    iput-object v0, p0, Lcom/mycompany/app/widget/WidgetSearchProviderBody;->b:Landroid/content/Context;

    .line 59
    .line 60
    iput-object v0, p0, Lcom/mycompany/app/widget/WidgetSearchProviderBody;->c:Landroid/appwidget/AppWidgetManager;

    .line 61
    .line 62
    iput-object v0, p0, Lcom/mycompany/app/widget/WidgetSearchProviderBody;->d:[I

    .line 63
    .line 64
    return-void

    .line 65
    :cond_7
    iget-object v1, p0, Lcom/mycompany/app/widget/WidgetSearchProviderBody;->b:Landroid/content/Context;

    .line 66
    .line 67
    new-instance v2, Lcom/mycompany/app/widget/WidgetSearchProviderBody$3;

    .line 68
    .line 69
    invoke-direct {v2, p0}, Lcom/mycompany/app/widget/WidgetSearchProviderBody$3;-><init>(Lcom/mycompany/app/widget/WidgetSearchProviderBody;)V

    .line 70
    .line 71
    .line 72
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainApp;->J(Landroid/content/Context;Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :catch_0
    iput-object v0, p0, Lcom/mycompany/app/widget/WidgetSearchProviderBody;->b:Landroid/content/Context;

    .line 77
    .line 78
    iput-object v0, p0, Lcom/mycompany/app/widget/WidgetSearchProviderBody;->c:Landroid/appwidget/AppWidgetManager;

    .line 79
    .line 80
    iput-object v0, p0, Lcom/mycompany/app/widget/WidgetSearchProviderBody;->d:[I

    .line 81
    .line 82
    return-void
.end method


# virtual methods
.method public final b(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    if-eqz p3, :cond_1

    .line 4
    .line 5
    array-length v0, p3

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iput-object p1, p0, Lcom/mycompany/app/widget/WidgetSearchProviderBody;->b:Landroid/content/Context;

    .line 10
    .line 11
    iput-object p2, p0, Lcom/mycompany/app/widget/WidgetSearchProviderBody;->c:Landroid/appwidget/AppWidgetManager;

    .line 12
    .line 13
    iput-object p3, p0, Lcom/mycompany/app/widget/WidgetSearchProviderBody;->d:[I

    .line 14
    .line 15
    const/4 p2, 0x0

    .line 16
    iput p2, p0, Lcom/mycompany/app/widget/WidgetSearchProviderBody;->e:I

    .line 17
    .line 18
    new-instance p2, Lcom/mycompany/app/widget/WidgetSearchProviderBody$2;

    .line 19
    .line 20
    invoke-direct {p2, p0}, Lcom/mycompany/app/widget/WidgetSearchProviderBody$2;-><init>(Lcom/mycompany/app/widget/WidgetSearchProviderBody;)V

    .line 21
    .line 22
    .line 23
    invoke-static {p1, p2}, Lcom/mycompany/app/main/MainApp;->J(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 28
    iput-object p1, p0, Lcom/mycompany/app/widget/WidgetSearchProviderBody;->b:Landroid/content/Context;

    .line 29
    .line 30
    iput-object p1, p0, Lcom/mycompany/app/widget/WidgetSearchProviderBody;->c:Landroid/appwidget/AppWidgetManager;

    .line 31
    .line 32
    iput-object p1, p0, Lcom/mycompany/app/widget/WidgetSearchProviderBody;->d:[I

    .line 33
    .line 34
    return-void
.end method

.method public final c(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;I)V
    .locals 7

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .line 5
    .line 6
    const-class v1, Lcom/mycompany/app/widget/WidgetSearchActivity;

    .line 7
    .line 8
    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 9
    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    const-string v3, "EXTRA_VOICE"

    .line 13
    .line 14
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 15
    .line 16
    .line 17
    const/high16 v2, 0x10000000

    .line 18
    .line 19
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 20
    .line 21
    .line 22
    const/4 v4, 0x1

    .line 23
    invoke-virtual {v0, v4}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 32
    .line 33
    .line 34
    const/16 v5, 0x8

    .line 35
    .line 36
    const/high16 v6, 0xc000000

    .line 37
    .line 38
    invoke-static {p1, v5, v0, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    new-instance v5, Landroid/content/Intent;

    .line 43
    .line 44
    invoke-direct {v5, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v5, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v5, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v5, v4}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v5, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 62
    .line 63
    .line 64
    const/16 v1, 0x9

    .line 65
    .line 66
    invoke-static {p1, v1, v5, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    new-instance v2, Landroid/widget/RemoteViews;

    .line 71
    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    iget-boolean v3, p0, Lcom/mycompany/app/widget/WidgetSearchProviderBody;->a:Z

    .line 77
    .line 78
    if-eqz v3, :cond_1

    .line 79
    .line 80
    sget v3, Lnet/kaki87/soul2/testing/R$layout;->widget_search_layout_dark:I

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_1
    sget v3, Lnet/kaki87/soul2/testing/R$layout;->widget_search_layout_light:I

    .line 84
    .line 85
    :goto_0
    invoke-direct {v2, p1, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 86
    .line 87
    .line 88
    sget p1, Lnet/kaki87/soul2/testing/R$id;->back_view:I

    .line 89
    .line 90
    invoke-virtual {v2, p1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 91
    .line 92
    .line 93
    sget p1, Lnet/kaki87/soul2/testing/R$id;->icon_view:I

    .line 94
    .line 95
    invoke-virtual {v2, p1, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p2, p3, v2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 99
    .line 100
    .line 101
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    const-string v0, "net.kaki87.soul2.testing.ACTION_SRCHGET_UPDATE"

    .line 12
    .line 13
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    if-nez p2, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iput-object p1, p0, Lcom/mycompany/app/widget/WidgetSearchProviderBody;->f:Landroid/content/Context;

    .line 21
    .line 22
    new-instance p2, Lcom/mycompany/app/widget/WidgetSearchProviderBody$1;

    .line 23
    .line 24
    invoke-direct {p2, p0}, Lcom/mycompany/app/widget/WidgetSearchProviderBody$1;-><init>(Lcom/mycompany/app/widget/WidgetSearchProviderBody;)V

    .line 25
    .line 26
    .line 27
    invoke-static {p1, p2}, Lcom/mycompany/app/main/MainApp;->J(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/mycompany/app/widget/WidgetSearchProviderBody;->b(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
