.class Lcom/mycompany/app/widget/WidgetSearchActivity$23;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyEngineMenu$MyEngineListener;


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
    iput-object p1, p0, Lcom/mycompany/app/widget/WidgetSearchActivity$23;->a:Lcom/mycompany/app/widget/WidgetSearchActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    sget v0, Lcom/mycompany/app/widget/WidgetSearchActivity;->I1:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/widget/WidgetSearchActivity$23;->a:Lcom/mycompany/app/widget/WidgetSearchActivity;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/widget/WidgetSearchActivity;->A1:Lcom/mycompany/app/view/MyEngineMenu;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    iput-object v2, v0, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyEngineMenu;->a()V

    .line 13
    .line 14
    .line 15
    iput-object v2, v0, Lcom/mycompany/app/widget/WidgetSearchActivity;->A1:Lcom/mycompany/app/view/MyEngineMenu;

    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final b(IILjava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/widget/WidgetSearchActivity$23;->a:Lcom/mycompany/app/widget/WidgetSearchActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/widget/WidgetSearchActivity;->n1:Lcom/mycompany/app/view/MyIconView;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    sget v1, Lcom/mycompany/app/pref/PrefZtwo;->j:I

    .line 9
    .line 10
    if-ne v1, p1, :cond_1

    .line 11
    .line 12
    :goto_0
    return-void

    .line 13
    :cond_1
    sput p1, Lcom/mycompany/app/pref/PrefZtwo;->j:I

    .line 14
    .line 15
    sput-object p3, Lcom/mycompany/app/pref/PrefZtwo;->k:Ljava/lang/String;

    .line 16
    .line 17
    sput p2, Lcom/mycompany/app/pref/PrefZtwo;->m:I

    .line 18
    .line 19
    iget-object p1, v0, Lcom/mycompany/app/widget/WidgetSearchActivity;->f1:Landroid/content/Context;

    .line 20
    .line 21
    invoke-static {p1}, Lcom/mycompany/app/pref/PrefZtwo;->v(Landroid/content/Context;)V

    .line 22
    .line 23
    .line 24
    iget-object p1, v0, Lcom/mycompany/app/widget/WidgetSearchActivity;->n1:Lcom/mycompany/app/view/MyIconView;

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/mycompany/app/view/MyIconView;->w()V

    .line 27
    .line 28
    .line 29
    return-void
.end method
