.class Lcom/mycompany/app/widget/WidgetBookProviderBody$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/widget/WidgetBookProviderBody;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/widget/WidgetBookProviderBody;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/widget/WidgetBookProviderBody$2;->c:Lcom/mycompany/app/widget/WidgetBookProviderBody;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/widget/WidgetBookProviderBody$2;->c:Lcom/mycompany/app/widget/WidgetBookProviderBody;

    .line 2
    .line 3
    iget v1, v0, Lcom/mycompany/app/widget/WidgetBookProviderBody;->g:I

    .line 4
    .line 5
    iget-object v2, v0, Lcom/mycompany/app/widget/WidgetBookProviderBody;->h:Landroid/content/Context;

    .line 6
    .line 7
    iget-object v3, v0, Lcom/mycompany/app/widget/WidgetBookProviderBody;->i:Ljava/lang/String;

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    iput-object v4, v0, Lcom/mycompany/app/widget/WidgetBookProviderBody;->h:Landroid/content/Context;

    .line 11
    .line 12
    iput-object v4, v0, Lcom/mycompany/app/widget/WidgetBookProviderBody;->i:Ljava/lang/String;

    .line 13
    .line 14
    if-eqz v2, :cond_4

    .line 15
    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-static {v2}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 24
    .line 25
    const/16 v6, 0x1f

    .line 26
    .line 27
    if-lt v5, v6, :cond_1

    .line 28
    .line 29
    invoke-virtual {v0, v2, v4, v1, v3}, Lcom/mycompany/app/widget/WidgetBookProviderBody;->g(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILjava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    if-nez v1, :cond_2

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    if-nez v4, :cond_3

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_3
    invoke-static {v2, v1, v3}, Lcom/mycompany/app/widget/WidgetBookProviderBody;->d(Landroid/content/Context;ILjava/lang/String;)Ljava/util/ArrayList;

    .line 40
    .line 41
    .line 42
    :try_start_0
    sget v0, Lnet/kaki87/soul2/testing/R$id;->list_view:I

    .line 43
    .line 44
    invoke-virtual {v4, v1, v0}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    .line 47
    :catch_0
    :cond_4
    :goto_0
    return-void
.end method
