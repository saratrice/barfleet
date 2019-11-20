# frozen_string_literal: true

json.array! @ranks, partial: 'admin/ranks/rank', as: :admin_rank
