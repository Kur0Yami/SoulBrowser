.class Lcom/mycompany/app/widget/WidgetSearchActivity$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/widget/WidgetSearchActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/widget/WidgetSearchActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/widget/WidgetSearchActivity$7;->c:Lcom/mycompany/app/widget/WidgetSearchActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/widget/WidgetSearchActivity$7;->c:Lcom/mycompany/app/widget/WidgetSearchActivity;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/widget/WidgetSearchActivity;->r1:Lcom/mycompany/app/view/MyEditAuto;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v1, 0x0

    .line 9
    const/4 v2, -0x1

    .line 10
    invoke-virtual {v0, v2, v1}, Lcom/mycompany/app/view/MyEditAuto;->i(ILjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p1, Lcom/mycompany/app/widget/WidgetSearchActivity;->r1:Lcom/mycompany/app/view/MyEditAuto;

    .line 14
    .line 15
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->b7(Landroid/view/View;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
