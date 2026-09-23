.class Lcom/mycompany/app/widget/WidgetSearchActivity$11$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/widget/WidgetSearchActivity$11;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/widget/WidgetSearchActivity$11;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/widget/WidgetSearchActivity$11$1;->c:Lcom/mycompany/app/widget/WidgetSearchActivity$11;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/widget/WidgetSearchActivity$11$1;->c:Lcom/mycompany/app/widget/WidgetSearchActivity$11;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/widget/WidgetSearchActivity$11;->c:Lcom/mycompany/app/widget/WidgetSearchActivity;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/widget/WidgetSearchActivity;->r1:Lcom/mycompany/app/view/MyEditAuto;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyEditAuto;->getAutoText()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-static {v0, v1}, Lcom/mycompany/app/widget/WidgetSearchActivity;->w0(Lcom/mycompany/app/widget/WidgetSearchActivity;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
