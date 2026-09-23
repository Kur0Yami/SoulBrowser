.class Lcom/mycompany/app/widget/WidgetSearchProviderBody$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/widget/WidgetSearchProviderBody;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/widget/WidgetSearchProviderBody;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/widget/WidgetSearchProviderBody$1;->c:Lcom/mycompany/app/widget/WidgetSearchProviderBody;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/widget/WidgetSearchProviderBody$1;->c:Lcom/mycompany/app/widget/WidgetSearchProviderBody;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/widget/WidgetSearchProviderBody;->f:Landroid/content/Context;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iput-object v2, v0, Lcom/mycompany/app/widget/WidgetSearchProviderBody;->f:Landroid/content/Context;

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-static {v1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    if-nez v2, :cond_1

    .line 16
    .line 17
    :goto_0
    return-void

    .line 18
    :cond_1
    new-instance v3, Landroid/content/ComponentName;

    .line 19
    .line 20
    iget-boolean v4, v0, Lcom/mycompany/app/widget/WidgetSearchProviderBody;->a:Z

    .line 21
    .line 22
    if-eqz v4, :cond_2

    .line 23
    .line 24
    const-class v4, Lcom/mycompany/app/widget/WidgetSearchProviderDark;

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_2
    const-class v4, Lcom/mycompany/app/widget/WidgetSearchProviderLight;

    .line 28
    .line 29
    :goto_1
    invoke-direct {v3, v1, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, v3}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-virtual {v0, v1, v2, v3}, Lcom/mycompany/app/widget/WidgetSearchProviderBody;->b(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 37
    .line 38
    .line 39
    return-void
.end method
