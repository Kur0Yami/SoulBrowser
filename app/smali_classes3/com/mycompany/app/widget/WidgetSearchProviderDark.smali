.class public Lcom/mycompany/app/widget/WidgetSearchProviderDark;
.super Lcom/mycompany/app/widget/WidgetSearchProviderBody;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final onAppWidgetOptionsChanged(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILandroid/os/Bundle;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/widget/WidgetSearchProviderBody;->a:Z

    .line 3
    .line 4
    invoke-super {p0, p1, p2, p3, p4}, Landroid/appwidget/AppWidgetProvider;->onAppWidgetOptionsChanged(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILandroid/os/Bundle;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final onDeleted(Landroid/content/Context;[I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/widget/WidgetSearchProviderBody;->a:Z

    .line 3
    .line 4
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onDeleted(Landroid/content/Context;[I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final onDisabled(Landroid/content/Context;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/widget/WidgetSearchProviderBody;->a:Z

    .line 3
    .line 4
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onDisabled(Landroid/content/Context;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final onEnabled(Landroid/content/Context;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/widget/WidgetSearchProviderBody;->a:Z

    .line 3
    .line 4
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onEnabled(Landroid/content/Context;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/widget/WidgetSearchProviderBody;->a:Z

    .line 3
    .line 4
    invoke-super {p0, p1, p2}, Lcom/mycompany/app/widget/WidgetSearchProviderBody;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final onRestored(Landroid/content/Context;[I[I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/widget/WidgetSearchProviderBody;->a:Z

    .line 3
    .line 4
    invoke-super {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetProvider;->onRestored(Landroid/content/Context;[I[I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/widget/WidgetSearchProviderBody;->a:Z

    .line 3
    .line 4
    invoke-virtual {p0, p1, p2, p3}, Lcom/mycompany/app/widget/WidgetSearchProviderBody;->b(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method
