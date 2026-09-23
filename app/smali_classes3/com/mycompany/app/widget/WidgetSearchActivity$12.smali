.class Lcom/mycompany/app/widget/WidgetSearchActivity$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyEditAuto$KeyBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/widget/WidgetSearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/mycompany/app/widget/WidgetSearchActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/widget/WidgetSearchActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/widget/WidgetSearchActivity$12;->a:Lcom/mycompany/app/widget/WidgetSearchActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(ZZ)Z
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/widget/WidgetSearchActivity$12;->a:Lcom/mycompany/app/widget/WidgetSearchActivity;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/mycompany/app/main/MainActivity;->Y()Z

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    const/4 v0, 0x1

    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget p2, p1, Lcom/mycompany/app/main/MainActivity;->J0:I

    .line 12
    .line 13
    if-lez p2, :cond_3

    .line 14
    .line 15
    iget-object p2, p1, Lcom/mycompany/app/widget/WidgetSearchActivity;->l1:Landroid/widget/FrameLayout;

    .line 16
    .line 17
    if-nez p2, :cond_1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    iget-boolean v1, p1, Lcom/mycompany/app/widget/WidgetSearchActivity;->F1:Z

    .line 21
    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    :goto_0
    return v0

    .line 25
    :cond_2
    iput-boolean v0, p1, Lcom/mycompany/app/widget/WidgetSearchActivity;->F1:Z

    .line 26
    .line 27
    iget-object v1, p1, Lcom/mycompany/app/widget/WidgetSearchActivity;->f1:Landroid/content/Context;

    .line 28
    .line 29
    invoke-static {v1, p2}, Lcom/mycompany/app/main/MainUtil;->X4(Landroid/content/Context;Landroid/view/View;)V

    .line 30
    .line 31
    .line 32
    iget-object p2, p1, Lcom/mycompany/app/widget/WidgetSearchActivity;->l1:Landroid/widget/FrameLayout;

    .line 33
    .line 34
    new-instance v1, Lcom/mycompany/app/widget/WidgetSearchActivity$13;

    .line 35
    .line 36
    invoke-direct {v1, p1}, Lcom/mycompany/app/widget/WidgetSearchActivity$13;-><init>(Lcom/mycompany/app/widget/WidgetSearchActivity;)V

    .line 37
    .line 38
    .line 39
    const-wide/16 v2, 0x64

    .line 40
    .line 41
    invoke-virtual {p2, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 42
    .line 43
    .line 44
    return v0

    .line 45
    :cond_3
    const/4 p1, 0x0

    .line 46
    return p1
.end method
