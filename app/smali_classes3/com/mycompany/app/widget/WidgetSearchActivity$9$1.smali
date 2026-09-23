.class Lcom/mycompany/app/widget/WidgetSearchActivity$9$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/widget/WidgetSearchActivity$9;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/widget/WidgetSearchActivity$9;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/widget/WidgetSearchActivity$9$1;->c:Lcom/mycompany/app/widget/WidgetSearchActivity$9;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/widget/WidgetSearchActivity$9$1;->c:Lcom/mycompany/app/widget/WidgetSearchActivity$9;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/widget/WidgetSearchActivity$9;->c:Lcom/mycompany/app/widget/WidgetSearchActivity;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/widget/WidgetSearchActivity;->x1:Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {v0}, Lcom/mycompany/app/widget/WidgetSearchActivity;->A0()V

    .line 11
    .line 12
    .line 13
    new-instance v1, Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 14
    .line 15
    sget v2, Lnet/kaki87/soul2/testing/R$string;->recent_delete:I

    .line 16
    .line 17
    sget v3, Lnet/kaki87/soul2/testing/R$string;->delete:I

    .line 18
    .line 19
    new-instance v4, Lcom/mycompany/app/widget/WidgetSearchActivity$21;

    .line 20
    .line 21
    invoke-direct {v4, v0}, Lcom/mycompany/app/widget/WidgetSearchActivity$21;-><init>(Lcom/mycompany/app/widget/WidgetSearchActivity;)V

    .line 22
    .line 23
    .line 24
    invoke-direct {v1, v0, v2, v3, v4}, Lcom/mycompany/app/dialog/DialogSetMsg;-><init>(Landroid/app/Activity;IILcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;)V

    .line 25
    .line 26
    .line 27
    iput-object v1, v0, Lcom/mycompany/app/widget/WidgetSearchActivity;->x1:Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 28
    .line 29
    new-instance v2, Lcom/mycompany/app/widget/WidgetSearchActivity$22;

    .line 30
    .line 31
    invoke-direct {v2, v0}, Lcom/mycompany/app/widget/WidgetSearchActivity$22;-><init>(Lcom/mycompany/app/widget/WidgetSearchActivity;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method
