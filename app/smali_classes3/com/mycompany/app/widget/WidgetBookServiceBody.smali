.class public Lcom/mycompany/app/widget/WidgetBookServiceBody;
.super Landroid/widget/RemoteViewsService;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/widget/WidgetBookServiceBody$RemoteFactory;
    }
.end annotation


# instance fields
.field public c:Z


# virtual methods
.method public onGetViewFactory(Landroid/content/Intent;)Landroid/widget/RemoteViewsService$RemoteViewsFactory;
    .locals 2

    .line 1
    new-instance v0, Lcom/mycompany/app/widget/WidgetBookServiceBody$RemoteFactory;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, p0, v1, p1}, Lcom/mycompany/app/widget/WidgetBookServiceBody$RemoteFactory;-><init>(Lcom/mycompany/app/widget/WidgetBookServiceBody;Landroid/content/Context;Landroid/content/Intent;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method
