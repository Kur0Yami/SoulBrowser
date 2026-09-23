.class Lcom/mycompany/app/widget/WidgetSearchActivity$20$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/widget/WidgetSearchActivity$20$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/widget/WidgetSearchActivity$20$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/widget/WidgetSearchActivity$20$1$1;->c:Lcom/mycompany/app/widget/WidgetSearchActivity$20$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/widget/WidgetSearchActivity$20$1$1;->c:Lcom/mycompany/app/widget/WidgetSearchActivity$20$1;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/widget/WidgetSearchActivity$20$1;->g:Lcom/mycompany/app/widget/WidgetSearchActivity$20;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/mycompany/app/widget/WidgetSearchActivity$20;->a:Lcom/mycompany/app/widget/WidgetSearchActivity;

    .line 6
    .line 7
    iget-boolean v2, v1, Lcom/mycompany/app/widget/WidgetSearchActivity;->y1:Z

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/mycompany/app/widget/WidgetSearchActivity;->E0()V

    .line 12
    .line 13
    .line 14
    iget-object v1, v0, Lcom/mycompany/app/widget/WidgetSearchActivity$20$1;->g:Lcom/mycompany/app/widget/WidgetSearchActivity$20;

    .line 15
    .line 16
    iget-object v1, v1, Lcom/mycompany/app/widget/WidgetSearchActivity$20;->a:Lcom/mycompany/app/widget/WidgetSearchActivity;

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    invoke-virtual {v1, v2}, Lcom/mycompany/app/widget/WidgetSearchActivity;->F0(Z)V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/widget/WidgetSearchActivity$20$1;->g:Lcom/mycompany/app/widget/WidgetSearchActivity$20;

    .line 23
    .line 24
    iget-object v1, v1, Lcom/mycompany/app/widget/WidgetSearchActivity$20;->a:Lcom/mycompany/app/widget/WidgetSearchActivity;

    .line 25
    .line 26
    iget-boolean v2, v0, Lcom/mycompany/app/widget/WidgetSearchActivity$20$1;->c:Z

    .line 27
    .line 28
    iget v0, v0, Lcom/mycompany/app/widget/WidgetSearchActivity$20$1;->f:I

    .line 29
    .line 30
    iget-boolean v3, v1, Lcom/mycompany/app/widget/WidgetSearchActivity;->y1:Z

    .line 31
    .line 32
    invoke-static {v1, v2, v0, v3}, Lcom/mycompany/app/widget/WidgetSearchActivity;->x0(Lcom/mycompany/app/widget/WidgetSearchActivity;ZIZ)V

    .line 33
    .line 34
    .line 35
    return-void
.end method
