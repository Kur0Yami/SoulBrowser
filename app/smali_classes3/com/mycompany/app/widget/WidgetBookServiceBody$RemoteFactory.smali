.class public Lcom/mycompany/app/widget/WidgetBookServiceBody$RemoteFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/RemoteViewsService$RemoteViewsFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/widget/WidgetBookServiceBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RemoteFactory"
.end annotation


# instance fields
.field public a:Landroid/content/Context;

.field public final b:I

.field public c:Ljava/util/List;

.field public final synthetic d:Lcom/mycompany/app/widget/WidgetBookServiceBody;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/widget/WidgetBookServiceBody;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/widget/WidgetBookServiceBody$RemoteFactory;->d:Lcom/mycompany/app/widget/WidgetBookServiceBody;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/mycompany/app/widget/WidgetBookServiceBody$RemoteFactory;->a:Landroid/content/Context;

    .line 7
    .line 8
    const-string p1, "appWidgetId"

    .line 9
    .line 10
    const/4 p2, 0x0

    .line 11
    invoke-virtual {p3, p1, p2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    iput p1, p0, Lcom/mycompany/app/widget/WidgetBookServiceBody$RemoteFactory;->b:I

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/widget/WidgetBookServiceBody$RemoteFactory;->c:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public final getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getLoadingView()Landroid/widget/RemoteViews;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getViewAt(I)Landroid/widget/RemoteViews;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/widget/WidgetBookServiceBody$RemoteFactory;->a:Landroid/content/Context;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/widget/WidgetBookServiceBody$RemoteFactory;->c:Ljava/util/List;

    .line 8
    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    if-ltz p1, :cond_2

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-lt p1, v0, :cond_1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/widget/WidgetBookServiceBody$RemoteFactory;->c:Ljava/util/List;

    .line 21
    .line 22
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    move-object v1, p1

    .line 27
    check-cast v1, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 28
    .line 29
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/mycompany/app/widget/WidgetBookServiceBody$RemoteFactory;->a:Landroid/content/Context;

    .line 30
    .line 31
    iget-object v0, p0, Lcom/mycompany/app/widget/WidgetBookServiceBody$RemoteFactory;->d:Lcom/mycompany/app/widget/WidgetBookServiceBody;

    .line 32
    .line 33
    iget-boolean v0, v0, Lcom/mycompany/app/widget/WidgetBookServiceBody;->c:Z

    .line 34
    .line 35
    invoke-static {p1, v1, v0}, Lcom/mycompany/app/widget/WidgetBookProviderBody;->c(Landroid/content/Context;Lcom/mycompany/app/main/MainItem$ChildItem;Z)Landroid/widget/RemoteViews;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    return-object p1
.end method

.method public final getViewTypeCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final onCreate()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/mycompany/app/widget/WidgetBookData;->b()Lcom/mycompany/app/widget/WidgetBookData;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, v0, Lcom/mycompany/app/widget/WidgetBookData;->b:Landroid/util/SparseArray;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_2

    .line 9
    .line 10
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget v1, p0, Lcom/mycompany/app/widget/WidgetBookServiceBody$RemoteFactory;->b:I

    .line 18
    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    :try_start_0
    iget-object v0, v0, Lcom/mycompany/app/widget/WidgetBookData;->b:Landroid/util/SparseArray;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    move-object v2, v0

    .line 31
    :catch_0
    :cond_2
    :goto_0
    iput-object v2, p0, Lcom/mycompany/app/widget/WidgetBookServiceBody$RemoteFactory;->c:Ljava/util/List;

    .line 32
    .line 33
    return-void
.end method

.method public final onDataSetChanged()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/mycompany/app/widget/WidgetBookData;->b()Lcom/mycompany/app/widget/WidgetBookData;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, v0, Lcom/mycompany/app/widget/WidgetBookData;->b:Landroid/util/SparseArray;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_2

    .line 9
    .line 10
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget v1, p0, Lcom/mycompany/app/widget/WidgetBookServiceBody$RemoteFactory;->b:I

    .line 18
    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    :try_start_0
    iget-object v0, v0, Lcom/mycompany/app/widget/WidgetBookData;->b:Landroid/util/SparseArray;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    move-object v2, v0

    .line 31
    :catch_0
    :cond_2
    :goto_0
    iput-object v2, p0, Lcom/mycompany/app/widget/WidgetBookServiceBody$RemoteFactory;->c:Ljava/util/List;

    .line 32
    .line 33
    return-void
.end method

.method public final onDestroy()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/mycompany/app/widget/WidgetBookServiceBody$RemoteFactory;->a:Landroid/content/Context;

    .line 3
    .line 4
    iput-object v0, p0, Lcom/mycompany/app/widget/WidgetBookServiceBody$RemoteFactory;->c:Ljava/util/List;

    .line 5
    .line 6
    return-void
.end method
