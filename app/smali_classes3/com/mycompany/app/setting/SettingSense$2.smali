.class Lcom/mycompany/app/setting/SettingSense$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/setting/SettingSense;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingSense;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingSense$2;->c:Lcom/mycompany/app/setting/SettingSense;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    sget p1, Lcom/mycompany/app/setting/SettingSense;->Q1:I

    .line 2
    .line 3
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingSense$2;->c:Lcom/mycompany/app/setting/SettingSense;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/mycompany/app/setting/SettingSense;->F0()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/mycompany/app/setting/SettingSense;->I0()V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 16
    .line 17
    .line 18
    return-void
.end method
