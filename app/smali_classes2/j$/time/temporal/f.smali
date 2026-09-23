.class public final enum Lj$/time/temporal/f;
.super Lj$/time/temporal/h;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "WEEK_OF_WEEK_BASED_YEAR"

    const/4 v1, 0x2

    .line 290
    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final d(Lj$/time/temporal/n;)Z
    .locals 1

    .line 450
    sget-object v0, Lj$/time/temporal/a;->EPOCH_DAY:Lj$/time/temporal/a;

    invoke-interface {p1, v0}, Lj$/time/temporal/n;->c(Lj$/time/temporal/r;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lj$/time/temporal/j;->a:Lj$/time/temporal/h;

    .line 736
    invoke-static {p1}, Lj$/com/android/tools/r8/a;->G(Lj$/time/temporal/n;)Lj$/time/chrono/m;

    move-result-object p1

    sget-object v0, Lj$/time/chrono/t;->c:Lj$/time/chrono/t;

    invoke-interface {p1, v0}, Lj$/time/chrono/m;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final g(Lj$/time/temporal/n;)Lj$/time/temporal/v;
    .locals 1

    .line 454
    invoke-virtual {p0, p1}, Lj$/time/temporal/f;->d(Lj$/time/temporal/n;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 457
    invoke-static {p1}, Lj$/time/g;->M(Lj$/time/temporal/n;)Lj$/time/g;

    move-result-object p1

    .line 0
    invoke-static {p1}, Lj$/time/temporal/h;->L(Lj$/time/g;)Lj$/time/temporal/v;

    move-result-object p1

    return-object p1

    .line 455
    :cond_0
    new-instance p1, Lj$/time/temporal/u;

    const-string v0, "Unsupported field: WeekOfWeekBasedYear"

    .line 88
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 455
    throw p1
.end method

.method public final h(Ljava/util/Map;Lj$/time/format/d0;Lj$/time/format/e0;)Lj$/time/temporal/n;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    .line 476
    sget-object v3, Lj$/time/temporal/h;->WEEK_BASED_YEAR:Lj$/time/temporal/h;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 477
    sget-object v5, Lj$/time/temporal/a;->DAY_OF_WEEK:Lj$/time/temporal/a;

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    if-eqz v4, :cond_8

    if-nez v6, :cond_0

    goto/16 :goto_6

    .line 481
    :cond_0
    invoke-interface {v3}, Lj$/time/temporal/r;->range()Lj$/time/temporal/v;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9, v3}, Lj$/time/temporal/v;->a(JLj$/time/temporal/r;)I

    move-result v4

    .line 482
    sget-object v7, Lj$/time/temporal/h;->WEEK_OF_WEEK_BASED_YEAR:Lj$/time/temporal/h;

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 590
    sget-object v9, Lj$/time/temporal/j;->a:Lj$/time/temporal/h;

    .line 736
    invoke-static/range {p2 .. p2}, Lj$/com/android/tools/r8/a;->G(Lj$/time/temporal/n;)Lj$/time/chrono/m;

    move-result-object v9

    sget-object v10, Lj$/time/chrono/t;->c:Lj$/time/chrono/t;

    invoke-interface {v9, v10}, Lj$/time/chrono/m;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    const/4 v9, 0x1

    const/4 v10, 0x4

    .line 484
    invoke-static {v4, v9, v10}, Lj$/time/g;->U(III)Lj$/time/g;

    move-result-object v4

    .line 485
    sget-object v9, Lj$/time/format/e0;->LENIENT:Lj$/time/format/e0;

    const-wide/16 v10, 0x1

    if-ne v2, v9, :cond_3

    .line 486
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    const-wide/16 v14, 0x7

    cmp-long v2, v12, v14

    if-lez v2, :cond_2

    sub-long/2addr v12, v10

    move-wide/from16 v16, v10

    .line 488
    div-long v10, v12, v14

    invoke-virtual {v4, v10, v11}, Lj$/time/g;->a0(J)Lj$/time/g;

    move-result-object v4

    .line 489
    rem-long/2addr v12, v14

    :goto_0
    add-long v12, v12, v16

    :cond_1
    move-wide/from16 v9, v16

    goto :goto_1

    :cond_2
    move-wide/from16 v16, v10

    cmp-long v2, v12, v16

    if-gez v2, :cond_1

    .line 491
    invoke-static {v12, v13, v14, v15}, Lj$/com/android/tools/r8/a;->P(JJ)J

    move-result-wide v9

    div-long/2addr v9, v14

    invoke-virtual {v4, v9, v10}, Lj$/time/g;->a0(J)Lj$/time/g;

    move-result-object v4

    const-wide/16 v9, 0x6

    add-long/2addr v12, v9

    .line 492
    rem-long/2addr v12, v14

    goto :goto_0

    .line 494
    :goto_1
    invoke-static {v7, v8, v9, v10}, Lj$/com/android/tools/r8/a;->P(JJ)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lj$/time/g;->a0(J)Lj$/time/g;

    move-result-object v2

    invoke-virtual {v2, v12, v13, v5}, Lj$/time/g;->d0(JLj$/time/temporal/r;)Lj$/time/g;

    move-result-object v2

    goto :goto_5

    :cond_3
    move-wide v9, v10

    .line 496
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    .line 669
    iget-object v6, v5, Lj$/time/temporal/a;->b:Lj$/time/temporal/v;

    .line 732
    invoke-virtual {v6, v11, v12, v5}, Lj$/time/temporal/v;->a(JLj$/time/temporal/r;)I

    move-result v6

    cmp-long v11, v7, v9

    if-ltz v11, :cond_5

    const-wide/16 v9, 0x34

    cmp-long v9, v7, v9

    if-lez v9, :cond_4

    goto :goto_3

    :cond_4
    :goto_2
    const-wide/16 v16, 0x1

    goto :goto_4

    .line 498
    :cond_5
    :goto_3
    sget-object v9, Lj$/time/format/e0;->STRICT:Lj$/time/format/e0;

    if-ne v2, v9, :cond_6

    .line 0
    invoke-static {v4}, Lj$/time/temporal/h;->L(Lj$/time/g;)Lj$/time/temporal/v;

    move-result-object v2

    .line 499
    invoke-virtual {v2, v7, v8, v0}, Lj$/time/temporal/v;->b(JLj$/time/temporal/r;)V

    goto :goto_2

    .line 501
    :cond_6
    invoke-virtual {v0}, Lj$/time/temporal/f;->range()Lj$/time/temporal/v;

    move-result-object v2

    invoke-virtual {v2, v7, v8, v0}, Lj$/time/temporal/v;->b(JLj$/time/temporal/r;)V

    goto :goto_2

    :goto_4
    sub-long v7, v7, v16

    .line 504
    invoke-virtual {v4, v7, v8}, Lj$/time/g;->a0(J)Lj$/time/g;

    move-result-object v2

    int-to-long v6, v6

    invoke-virtual {v2, v6, v7, v5}, Lj$/time/g;->d0(JLj$/time/temporal/r;)Lj$/time/g;

    move-result-object v2

    .line 506
    :goto_5
    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    invoke-interface {v1, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2

    .line 591
    :cond_7
    new-instance v1, Lj$/time/b;

    const-string v2, "Resolve requires IsoChronology"

    .line 88
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 591
    throw v1

    :cond_8
    :goto_6
    const/4 v1, 0x0

    return-object v1
.end method

.method public final i(Lj$/time/temporal/n;)J
    .locals 2

    .line 461
    invoke-virtual {p0, p1}, Lj$/time/temporal/f;->d(Lj$/time/temporal/n;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 464
    invoke-static {p1}, Lj$/time/g;->M(Lj$/time/temporal/n;)Lj$/time/g;

    move-result-object p1

    invoke-static {p1}, Lj$/time/temporal/h;->u(Lj$/time/g;)I

    move-result p1

    int-to-long v0, p1

    return-wide v0

    .line 462
    :cond_0
    new-instance p1, Lj$/time/temporal/u;

    const-string v0, "Unsupported field: WeekOfWeekBasedYear"

    .line 88
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 462
    throw p1
.end method

.method public final l(Lj$/time/temporal/m;J)Lj$/time/temporal/m;
    .locals 2

    .line 470
    invoke-virtual {p0}, Lj$/time/temporal/f;->range()Lj$/time/temporal/v;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p0}, Lj$/time/temporal/v;->b(JLj$/time/temporal/r;)V

    .line 471
    invoke-virtual {p0, p1}, Lj$/time/temporal/f;->i(Lj$/time/temporal/n;)J

    move-result-wide v0

    invoke-static {p2, p3, v0, v1}, Lj$/com/android/tools/r8/a;->P(JJ)J

    move-result-wide p2

    sget-object v0, Lj$/time/temporal/b;->WEEKS:Lj$/time/temporal/b;

    invoke-interface {p1, p2, p3, v0}, Lj$/time/temporal/m;->b(JLj$/time/temporal/t;)Lj$/time/temporal/m;

    move-result-object p1

    return-object p1
.end method

.method public final range()Lj$/time/temporal/v;
    .locals 6

    const-wide/16 v2, 0x34

    const-wide/16 v4, 0x35

    const-wide/16 v0, 0x1

    .line 147
    invoke-static/range {v0 .. v5}, Lj$/time/temporal/v;->g(JJJ)Lj$/time/temporal/v;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 513
    const-string v0, "WeekOfWeekBasedYear"

    return-object v0
.end method
