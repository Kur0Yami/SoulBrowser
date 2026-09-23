.class Lcom/mycompany/app/widget/WidgetSearchActivity$21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;


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
    iput-object p1, p0, Lcom/mycompany/app/widget/WidgetSearchActivity$21;->a:Lcom/mycompany/app/widget/WidgetSearchActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/widget/WidgetSearchActivity$21;->a:Lcom/mycompany/app/widget/WidgetSearchActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/widget/WidgetSearchActivity;->x1:Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {v1}, Lcom/mycompany/app/dialog/DialogSetMsg;->C()V

    .line 9
    .line 10
    .line 11
    new-instance v1, Lcom/mycompany/app/widget/WidgetSearchActivity$21$1;

    .line 12
    .line 13
    invoke-direct {v1, p0}, Lcom/mycompany/app/widget/WidgetSearchActivity$21$1;-><init>(Lcom/mycompany/app/widget/WidgetSearchActivity$21;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
